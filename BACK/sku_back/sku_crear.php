<?php
require_once "../shared/clases/config.php";
require_once("../shared/clases/DBConnection.php");
// require_once "../shared/clases/MssqlConexion.php";
require_once "../shared/clases/HelpersDB.PHP";
require_once "../shared/clases/inflector.php";
error_reporting(E_ALL ^ E_NOTICE); // inicialmente desactivamos esto ya que si queremos ver los notices, pero evita el funcionamiento de $AJAX YA QUE IMPRIME ANTES DEL HEADER
set_time_limit(90); // solo para este script, TIEMPO MAXIMO QUE DEMORA EN SOLICITAR UNA CONSULTA A LA BASE DE DATOS
$sqlsrv=new DBConnection('sqlsrv', $MSSQL['13']['host'], $MSSQL['13']['user'], $MSSQL['13']['pass'],'Stock');
$mysqli=new DBConnection('mysqli', $MYSQL['dev']['host'], $MYSQL['dev']['user'], $MYSQL['dev']['pass'], 'kayser_articulos');
$data=[]; $existe_error_conexion=0;
if(($sqlsrv->getConnection())===false) { $data['errors'][]=$sqlsrv->getErrors(); $existe_error_conexion=1; }
if(($mysqli->getConnection())===false)  {$data['errors'][]=$mysqli->getErrors(); $existe_error_conexion=1; }
if($existe_error_conexion){
  echo json_encode($data);
  exit;
}

if($_POST['option']=="cargar_selects_independientes"){
  ///--- INICIALMENTE MANDAMOS DE LLAPA EL PRIMER BARCODE PARA APLICAR ---
  $data['first_barcode']=getFirstBarcode();
  ///////////////////////////////////
  $options=[];
  $nombre_name="";
  $nombre_id="";
  foreach ($tablas_sku as $tabla => $array_tabla) { // recorremos todo el array con las tablas, campos y relaciones
    $arr_ops=[];
    if(!isset($array_tabla['dep']) && $tabla!="RelacionPrefijo"){
      $nombre_name=$array_tabla['campo'];
      if(!isset($array_tabla['id']))//TABLA SIN DEPENDENCIA SIN ID
        $query="select ".$array_tabla['campo']." as id,".$array_tabla['campo']." as name from $tabla ORDER BY ".$array_tabla['campo'];
      else {
        $nombre_id=$array_tabla['id'];
        $query="select ".$array_tabla['id']." as id,".$array_tabla['campo']." as name from $tabla ORDER BY ".$array_tabla['campo'];
      }
      if($array_tabla['bd']=="mysql"){// SI LA TABLA ES MYSQL
        if(($arr_ops=$mysqli->select($query,"mysqli_a_o"))===false){
          $data['errors'][]=$mysqli->getErrors();
          continue;
        }
      }else {
        if(($arr_ops=$sqlsrv->select($query,"sqlsrv_a_p"))===false){
          $data['errors'][]=$sqlsrv->getErrors();
          continue;
        }
      }
      if($arr_ops==0)
          $arr_ops="SIN RESULTADOS";
      $options[]=array('tabla'=>$tabla, 'options'=>$arr_ops);
    }
  }// fin foreach
  $mysqli->closeConnection();
  $sqlsrv->closeConnection();
  $data['values']=$options;
  echo json_encode($data);
}
if($_POST['option']=="cargar_selects_dependientes") {
 
  array_splice($array_grand_child,0);//vaciamos el array nietos para buscar nuevos nietos
  //array $array_grand_child es global, declarado en un asset y contendrá los descendientes de las tablas qe se veran afectadas a peticion de la vista
  //es decir segun el nombre y valor del padre, se buscarán tablas dependientes y se cargarán valores relacionados al padre
  //y en  $array_grand_child se guardaran los nombres de descendientes de estas tablas y se enviaran a la vista para resetearse //este array con nombres se enviara en el index 0 del array data enviado a la vista
  $array_tabla_extraida=[];
  $options=[];
  $padre=$_POST['nom_tabla_padre'];
  if($padre=='Kayser_OITB'){//se buscará dependientes de DEPARTAMENTO (el padre supremo)
    $codigo_padre=getIdFromName($padre,$_POST['val_tabla_padre']); //en este caso, la vista envió el valor del nombre del departamente y no el id
    $data['dpto']=$codigo_padre;
  } else
    $codigo_padre=$_POST['val_tabla_padre']; // para este caso, se pasó el id de la tabla obtenido del val del option padre
  foreach ($tablas_sku as $tabla => $array_tabla) { // recorremos todo el array con las tablas, campos y relaciones
    $ops="";//"<option value=''></option>";
    $arr_ops=[];
    if(isset($array_tabla['dep'])){//si la tabla recorrida tiene padre
      if($padre==$array_tabla['dep']){//si la tabla padre de la tabla recorrida es padre que vino de la vista
        addGrandChild($tabla); // buscamos descendientes dependientes de esta tabla y la agregamos al array $array_grand_child
        $nombre_id=$array_tabla['id'];
        $nombre_name=$array_tabla['campo'];
        if($array_tabla['bd']=="mysql") { // la tabla y la relacion estan en MOTOR MYSQL
          if(!isset($array_tabla['id'])) { //TABLA CON ID o CODIGO distinto al NOMBRE
            if($tablas_sku[$padre]['type_id']=="INT") //TABLA DEPENDIENTE SIN ID PERO CON ID PADRE ENTERO
              $query = "select ".$array_tabla['campo']." as id, ".$array_tabla['campo']." as name from $tabla AS T INNER JOIN ".$array_tabla['tabla_rel']." AS R ON T.".$array_tabla['campo']."=".$array_tabla['nom_cod_rel']." where R.".$array_tabla['nom_cod_padre_rel']."=$codigo_padre ORDER BY ".$array_tabla['campo'];
            else
              $query = "select ".$array_tabla['campo']." as id, ".$array_tabla['campo']." as name from $tabla AS T INNER JOIN ".$array_tabla['tabla_rel']." AS R ON T.".$array_tabla['campo']."=".$array_tabla['nom_cod_rel']." where R.".$array_tabla['nom_cod_padre_rel']."='".$codigo_padre."' ORDER BY ".$array_tabla['campo'];
          }else {// TABLA DEPENDIENTE CON ID
            if($tablas_sku[$padre]['type_id']=="INT") //TABLA DEPENDIENTE CON ID PROPIO E ID PADRE ENTERO
              $query="select ".$array_tabla['id']." as id,".$array_tabla['campo']." as name from $tabla AS T INNER JOIN ".$array_tabla['tabla_rel']." AS R ON T.".$array_tabla['id']."=".$array_tabla['nom_cod_rel']." where R.".$array_tabla['nom_cod_padre_rel']."=$codigo_padre ORDER BY ".$array_tabla['campo'];
            else
              $query="select ".$array_tabla['id']." as id,".$array_tabla['campo']." as name from $tabla AS T INNER JOIN ".$array_tabla['tabla_rel']." AS R ON T.".$array_tabla['id']."=".$array_tabla['nom_cod_rel']." where R.".$array_tabla['nom_cod_padre_rel']."='".$codigo_padre."' ORDER BY ".$array_tabla['campo'];
          }
          if(($arr_ops=$mysqli->select($query,"mysqli_a_o"))===false){
            $data['errors'][]=$mysqi->getErrors();
            continue;//pasamos al siguiente recorrido de foreach
          }else {
            if($arr_ops==0)
              $arr_ops="SIN RESULTADOS";
          }
        }//fin if if($array_tabla['bd']=="mysql")
        else {//cargamos en un array el id y name de la tabla en mencion
          $query_id_name="SELECT ".$array_tabla['id'].",".$array_tabla['campo']." from $tabla ORDER BY ".$array_tabla['campo'];
          if($tablas_sku[$tabla]['bd']=="mysql")
            $array_tabla_extraida=$mysqli->selectArrayUniAssocIdName($query_id_name);
          else 
            $array_tabla_extraida=$sqlsrv->selectArrayUniAssocIdName($query_id_name);         
          // var_dump($array_tabla_extraida);
          if($tablas_sku[$padre]['type_id']=="INT")
            $query_relacion="SELECT * FROM ".$array_tabla['tabla_rel']." WHERE ".$array_tabla['nom_cod_padre_rel']."=$codigo_padre";
          else
            $query_relacion="SELECT * FROM ".$array_tabla['tabla_rel']." WHERE ".$array_tabla['nom_cod_padre_rel']."='".$codigo_padre."'";            
          if (($arr_rel=$mysqli->select($query_relacion,"mysqli_b_o")) === false) {
            $data['errors'][]=$mysqli->getErrors();
            continue;//pasamos al siguiente recorrido de foreach
          }else{
            foreach ($arr_rel as $value) {# code...
              $nom_id_dep_rel=$value[1];
              $arr_ops[]=Array('id'=>$value[1], 'name'=> $array_tabla_extraida[$nom_id_dep_rel]);
            }
          }
        }
        if($tabla=='Talla'){
          $arr_tallas=[];
          foreach ($arr_ops as $value)
            $arr_tallas[]=array('familia'=>$value['id'], 'tallas'=>cargarTallasToFamilia($value['id']));
          $data['values'][]=array('tabla'=>$tabla, 'options'=>$arr_tallas);
        } else
          $data['values'][]=array('tabla'=>$tabla, 'options'=>$arr_ops);
      }//fin if($_POST['nom_tabla_padre']==$array_tabla['dep'])
    }
  }//fin foreach
  // array_unshift($options, $array_grand_child);//agregmos los descendientes al inicio de la data a enviar por json
  $data['grand_childs']=$array_grand_child;
  $mysqli->closeConnection();
  $sqlsrv->closeConnection();
  echo json_encode($data);
}
if($_POST['option']=='save_and_send_skus'){

  $send=sendMail($_POST);
  if($send===true)
    $data['resp']='READY';
  else
    $data['resp']='NO SE PUDO ENVIAR EL ARCHIVO...';

  // $data=sendMail($_POST);
  echo json_encode($data);
}
function getFirstBarcode() {
  global $sqlsrv;
  $query_barcode="SELECT top 1 CodeBars from Kayser_OITM WHERE CodeBars like '780001%' order by  CodeBars DESC";
  $arr_last_barcode=$sqlsrv->select($query_barcode,'sqlsrv_a_p');
  if($arr_last_barcode!==false){
    ($arr_last_barcode!=0) ? $first_barcode=((int)$arr_first_barcode[0]['CodeBars'])+1 : $first_barcode=780001000000;
  }
  return $first_barcode;
}
function setContentExcel(){
  $excel_columns_default = array(
    'RecordKey' => array('default'=> 1, 'column'=> 'A' ),
    'ForceSelectionOfSerialNumber'=> array('default'=> 'tNO', 'column'=> 'D' ),
    'GLMethod'=> array('default'=> 'C', 'column'=> 'F' ),
    'InventoryItem' => array('default'=> 'tYES', 'column'=> 'G' ),
    'IsPhantom' => array('default'=> 'tNO', 'column'=> 'H' ),
    'IssueMethod' => array('default'=> 'M', 'column'=> 'I' ),
    'SalUnitMsr'=> array('default'=> '1', 'column'=> 'J' ),
    'ManageStockByWarehouse'=> array('default'=> 'tYES', 'column'=> 'M' ),
    'PlanningSystem'=> array('default'=> 'M', 'column'=> 'N' ),
    'U_APOLLO_APPGRP' => array('default'=> '1', 'column'=> 'U' ),
    'U_GSP_TPVACTIVE' => array('default'=> 'Y', 'column'=> 'AD' ),
    'AvgPrice'=> array('default'=> '', 'column'=> 'AE' ),
    'U_IDDiseno'=> array('default'=> '', 'column'=> 'AG' )
  );
  $excel_columns = array(
    'ItemCode'=> 'B',
    'BarCode'=> 'C',
    'ForeignName'=> 'E',
    'ItemName'=> 'K',
    'ItmsGrpCod'=> 'L',
    'SWW'=> 'O',
    'U_APOLLO_SEG1'=> 'P',
    'U_APOLLO_SEG2'=> 'Q',
    'U_APOLLO_SSEG3'=> 'R',
    'U_APOLLO_SEG3'=> 'S',
    'U_APOLLO_SEASON'=> 'T',
    'U_APOLLO_SSEG3VO'=> 'V',
    'U_MARCA'=> 'X',
    'U_EVD'=> 'Y',
    'U_MATERIAL'=> 'Z',
    'U_ESTILO'=> 'AA',
    'U_SUBGRUPO1'=> 'AB',
    'U_APOLLO_COO'=> 'AC',
    'U_APOLLO_DIV'=> 'AF',
    'U_IDCopa'=> 'AH',
    'U_FILA'=> 'AI',
    'U_APOLLO_S_GROUP'=> 'AJ',
    'U_GSP_SECTION'=> 'AK'
  );  

  $ele_marca=$_POST['select_marca'];
  $ele_subdpto=$_POST['select_sku_subdpto'];
  $ele_prenda = $_POST['select_sku_prenda'];
  $ele_categoria=$_POST['select_sku_categoria'];
  $ele_presentacion=$_POST['select_sku_presentacion'];
  $ele_material=$_POST['select_sku_material'];
  $arr_color=[];//ver de que se compone este array
  $arr_talla=[];//aun esta pendiente que hacer con esto
  $ele_tprenda=$_POST['select_sku_tprenda'];
  $ele_tcatalogo=$_POST['select_sku_tcatalogo'];
  $ele_grupo_uso=$_POST['select_sku_grupo_uso'];
  $ele_caracteristica = $_POST['txa_sku_caracteristicas'];
  $ele_composicion = $_POST['select_sku_composicion'];
  $else_peso = $_POST['txt_sku_peso'];

  // $articulo_values = array(
  //   'ForeignName'=> array( 'val'=> ele_caracteristica.value ], // caracteristica
  //   'ItemName'=> array( 'val'=> itemname ), //nombre
  //   'ItmsGrpCod'=> array( 'cod'=> code_dpto, 'val'=> name_dpto ), //dpto
  //   'SWW'=> array( 'val'=> ele_prenda.options[ele_prenda.selectedIndex].text ), //prenda (deprecated)    
  //   'U_APOLLO_SEG1'=> array( 'val'=> val_article ),  //codigo articulo
  //   'U_APOLLO_SEG3'=> array( 'cod'=> '', 'val'=> '' ), // familia talla
  //   'U_APOLLO_SEASON'=> array( 'cod'=> ele_prenda.value, 'val'=> ele_prenda.options[ele_prenda.selectedIndex].text ), //prenda  
  //   'U_MARCA'=> array( 'cod'=> ele_marca.value, 'val'=> ele_marca.options[ele_marca.selectedIndex].text ), //marca    
  //   'U_EVD'=> array( 'cod'=> ele_tprenda.value, 'val'=> ele_tprenda.options[ele_tprenda.selectedIndex].text  ), //temporada
  //   'U_MATERIAL'=> array( 'cod'=> ele_material.value, 'val'=> ele_material.options[ele_material.selectedIndex].text  ), //material
  //   'U_ESTILO'=> array( 'cod'=> ele_grupo_uso.value, 'val'=> ele_grupo_uso.options[ele_grupo_uso.selectedIndex].text  ), //grupo uso
  //   'U_SUBGRUPO1'=> array( 'cod'=> ele_subdpto.value, 'val'=> ele_subdpto.options[ele_subdpto.selectedIndex].text  ), //supdpto
  //   'U_APOLLO_COO'=> array( 'cod'=> ele_composicion.value, 'val'=> ele_composicion.options[ele_composicion.selectedIndex].text  ), //composicion 
  //   'U_APOLLO_DIV'=> array( 'cod'=> ele_categoria.value, 'val'=> ele_categoria.options[ele_categoria.selectedIndex].text  ), //categoria
  //   'U_FILA'=> array( 'cod'=> ele_presentacion.value, 'val'=> ele_presentacion.options[ele_presentacion.selectedIndex].text  ), //presentacion
  //   'U_APOLLO_S_GROUP'=> array( 'cod'=> ele_tcatalogo.value, 'val'=> ele_tcatalogo.options[ele_tcatalogo.selectedIndex].text  ), //temporada catalogo
  // );
  return $excel_columns_default;
}
function sendMail($arr_cont){
  $content_csv="RecordKey;ItemCode;BarCode;ForceSelectionOfSerialNumber;ForeignName;GLMethod;InventoryItem;IsPhantom;IssueMethod;SalesUnit;ItemName;ItemsGroupCode;ManageStockByWarehouse;PlanningSystem;SWW;U_APOLLO_SEG1;U_APOLLO_SEG2;U_APOLLO_SSEG3;U_APOLLO_SEG3;U_APOLLO_SEASON;U_APOLLO_APPGRP;U_APOLLO_SSEG3VO;U_APOLLO_ACT;U_MARCA;U_EVD;U_MATERIAL;U_ESTILO;U_SUBGRUPO1;U_APOLLO_COO;U_GSP_TPVACTIVE;AvgStdPrice;U_APOLLO_DIV;U_IDDiseno;U_IDCopa;U_FILA;U_APOLLO_S_GROUP;U_GSP_SECTION;\r\n";
  $content_csv.="RecordKey;ItemCode;BarCode;ForceSelectionOfSerialNumber;ForeignName;GLMethod;InventoryItem;IsPhantom;IssueMethod;SalUnitMsr;ItemName;ItemsGroupCode;ManageStockByWarehouse;PlanningSystem;SWW;U_APOLLO_SEG1;U_APOLLO_SEG2;U_APOLLO_SSEG3;U_APOLLO_SEG3;U_APOLLO_SEASON;U_APOLLO_APPGRP;U_APOLLO_SSEG3VO;U_APOLLO_ACT;U_MARCA;U_EVD;U_MATERIAL;U_ESTILO;U_SUBGRUPO1;U_APOLLO_COO;U_GSP_TPVACTIVE;AvgPrice;U_APOLLO_DIV;U_IDDiseno;U_IDCopa;U_FILA;U_APOLLO_S_GROUP;U_GSP_SECTION;\r\n";
  $cant_colores=count($arr_cont['colores_name']);
  $cant_tallas=count($arr_cont['tallas_name']);
  if(isset($arr_cont['copa_name']))
    $copa=$arr_cont['copa_name'];
  $c=0;
  $t=0;
  for($i=0; $i<count($arr_cont['skus']); $i++){
    if($t<$cant_tallas){
      $colorito=$arr_cont['colores_name'][$c];
      $tallita=$arr_cont['tallas_name'][$t];
      $ordencito=$arr_cont['tallas_orden'][$t];
      $t++;
    }else {      
      $colorito=$arr_cont['colores_name'][$c+1];
      $tallita=$arr_cont['tallas_name'][0];
      $ordencito=$arr_cont['tallas_orden'][0];
      $t=1;
      $c++;
    }      
    $fila_csv="";
    $fila_csv.= ($i+1).";";
    $fila_csv.= $arr_cont['skus'][$i].";";
    $fila_csv.= strval($arr_cont['barcodes'][$i]).";tNO;";                         ///---con columna default
    $fila_csv.= $arr_cont['caracteristica'].";C;tYES;tNO;M;1;";            ///---con columnaS default
    $fila_csv.= $arr_cont['itemname'].";"; 
    $fila_csv.= $arr_cont['dpto_code'].";tYES;M;";                   ///---con columnaS default                   
    $fila_csv.= $arr_cont['prenda_name'].";";
    $fila_csv.= $arr_cont['articulo'].";"; 
    $fila_csv.= $colorito.";";
    $fila_csv.= $tallita.";";
    $fila_csv.= $arr_cont['talla_familia'].";";
    $fila_csv.= $arr_cont['prenda_code'].";1;";                           ///---con columnaS default
    $fila_csv.= $ordencito.";Y;";                                         ///---con columnaS default
    $fila_csv.= $arr_cont['marca_name'].";";
    $fila_csv.= $arr_cont['tprenda_name'].";";
    $fila_csv.= $arr_cont['material_name'].";";
    $fila_csv.= $arr_cont['grupo_uso_name'].";";
    $fila_csv.= $arr_cont['subdpto_name'].";";
    $fila_csv.= $arr_cont['composicion_name'].";Y;;";                     ///---con columnaS default
    $fila_csv.= $arr_cont['categoria_code'].";;";
    $fila_csv.= $arr_cont['copa_name'].";";
    $fila_csv.= $arr_cont['presentacion_name'].";";
    $fila_csv.= $arr_cont['tcatalogo_name'].";";
    $fila_csv.= $arr_cont['copa_name'].";\r\n"; 
    $content_csv.=$fila_csv;       
  }
  ///--- ############################### ---
  ///--- DATOS PARA ENVIO DE CSV AL MAIL ---
  ///--- ############################### ---
  $destinatario ="aobando@kayser.cl";#"mmora@kayser.cl";
  $titulo = "PLANTILLA_CARGA_SKUS_".$arr_cont['articulo'];
  $headers = "From: DISENO <diseno@kayser.cl>\r\n";
  $headers .= "MIME-Version: 1.0\r\n";
  $headers .= "Content-Type: application/octet-stream; name=".$titulo.".csv\r\n"; //envio directo de datos
  $headers .= "Content-Disposition: attachment; filename=".$titulo.".csv\r\n";
  $headers .= "Content-Transfer-Encoding: binary\r\n";
  $headers .= utf8_decode($content_csv);
  $headers .= "\r\n";

  if(mail($destinatario, $titulo,"", $headers)){
    return true;
  }
  else{
    return false;
  }
  // return($content_csv);   
}
?>