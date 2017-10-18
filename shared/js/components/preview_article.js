var excel_columns_default = {
  'RecordKey': { 'default': 1, 'column': 'A' },
  'ForceSelectionOfSerialNumber': { 'default': 'tNO', 'column': 'D' },
  'GLMethod': { 'default': 'C', 'column': 'F' },
  'InventoryItem': { 'default': 'tYES', 'column': 'G' },
  'IsPhantom': { 'default': 'tNO', 'column': 'H' },
  'IssueMethod': { 'default': 'M', 'column': 'I' },
  'SalUnitMsr': { 'default': '1', 'column': 'J' },
  'ManageStockByWarehouse': { 'default': 'tYES', 'column': 'M' },
  'PlanningSystem': { 'default': 'M', 'column': 'N' },
  'U_APOLLO_APPGRP': { 'default': '1', 'column': 'U' },
  'U_GSP_TPVACTIVE': { 'default': 'Y', 'column': 'AD' },
  'AvgPrice': { 'default': '', 'column': 'AE' },
  'U_IDDiseno': { 'default': '', 'column': 'AG' }
}
var excel_columns = {
  'ItemCode': 'B',
  'BarCode': 'C',
  'ForeignName': 'E',
  'ItemName': 'K',
  'ItmsGrpCod': 'L',
  'SWW': 'O',
  'U_APOLLO_SEG1': 'P',
  'U_APOLLO_SEG2': 'Q',
  'U_APOLLO_SSEG3': 'R',
  'U_APOLLO_SEG3': 'S',
  'U_APOLLO_SEASON': 'T',
  'U_APOLLO_SSEG3VO': 'V',
  'U_MARCA': 'X',
  'U_EVD': 'Y',
  'U_MATERIAL': 'Z',
  'U_ESTILO': 'AA',
  'U_SUBGRUPO1': 'AB',
  'U_APOLLO_COO': 'AC',
  'U_APOLLO_DIV': 'AF',
  'U_IDCopa': 'AH',
  'U_FILA': 'AI',
  'U_APOLLO_S_GROUP': 'AJ',
  'U_GSP_SECTION': 'AK'
}
var articulos_values=[];
var sku_values=[];
var itemname, txt_article;


//FUNCTION PARA CREAR LOS CODIGOS SKU en un array
function getCodesSku() {
  colores = document.getElementById('select_sku_color').value;
  tallas = document.getElementById('span_tallas_chosen').innerHTML.split(',');
  console.log(tallas);
}
//FUNCION PARA SETEAR LOS VALORES DE LOS ARRAYS QUE SE USARANA PARA CREAR LOS EXCEL
function setValues(){
  console.log(code_dpto,name_dpto); //code_dpto se cargara cuando 
  articulo_values = {
    'ForeignName': { 'val': document.getElementById('txa_sku_caracteristicas').value }, // caracteristica
    'ItemName': { 'val': itemname }, //nombre
    'ItmsGrpCod': { 'cod': 'cod_dpt', 'val': '' }, //dpto
    'SWW': { 'cod': '', 'val': '' }, //prenda (deprecated)    
    'U_APOLLO_SEG1': { 'cod': '', 'val': '' },  //codigo articulo
    'U_APOLLO_SEG3': { 'cod': '', 'val': '' }, // familia talla
    'U_APOLLO_SEASON': { 'cod': '', 'val': '' }, //prenda  
    'U_MARCA': { 'cod': '', 'val': '' }, //marca    
    'U_EVD': { 'cod': '', 'val': '' }, //temporada
    'U_MATERIAL': { 'cod': '', 'val': '' }, //material
    'U_ESTILO': { 'cod': '', 'val': '' }, //grupo uso
    'U_SUBGRUPO1': { 'cod': '', 'val': '' }, //supdpto
    'U_APOLLO_COO': { 'cod': '', 'val': '' }, //composicion 
    'U_APOLLO_DIV': { 'cod': '', 'val': '' }, //categoria
    'U_FILA': { 'cod': '', 'val': '' }, //presentacion
    'U_APOLLO_S_GROUP': { 'cod': '', 'val': '' }, //temporada catalogo
  }
  sku_values = {
    'ItemCode': { 'cod': '', 'val': '' }, //codigo sku
    'BarCode': { 'val': '' }, //barcode ean13
    'U_APOLLO_SEG2': { 'cod': '', 'val': '' }, //color
    'U_APOLLO_SSEG3': { 'val': '' }, //talla
    'U_APOLLO_SSEG3VO': { 'val': '' }, //orden de talla
    'U_IDCopa': { 'val': '' }, //copa
    'U_GSP_SECTION': { 'val': '' }, //copa
  }
}
//FUNCION QUE CREA EL COMPONENTE ARTCULO  que contiene LA TABLA CON LOS SKUs a GENERAR
function makeFillArticlePreview(){
  setValues(); //llamamos a funcion para llenar los arrays con los valores

  txt_article = document.getElementById('txt_sku_prefijo').defaultValue + '.' + document.getElementById('txt_sku_correlativo').defaultValue;
  itemname = txt_article + '-' + document.getElementById('txt_sku_descripcion').defaultValue;
  console.log(itemname);

  var articulo_values = {
    'ForeignName': { 'val': document.getElementById('txa_sku_caracteristicas').value}, // caracteristica
    'ItemName': { 'val': itemname }, //nombre
    'ItmsGrpCod': { 'cod': '', 'val': '' }, //dpto
    'SWW': { 'cod': '', 'val': '' }, //prenda (deprecated)    
    'U_APOLLO_SEG1': { 'cod': '', 'val': '' },  //codigo articulo
    'U_APOLLO_SEG3': { 'cod': '', 'val': '' }, // familia talla
    'U_APOLLO_SEASON': { 'cod': '', 'val': '' }, //prenda  
    'U_MARCA': { 'cod': '', 'val': '' }, //marca    
    'U_EVD': { 'cod': '', 'val': '' }, //temporada
    'U_MATERIAL': { 'cod': '', 'val': '' }, //material
    'U_ESTILO': { 'cod': '', 'val': '' }, //grupo uso
    'U_SUBGRUPO1': { 'cod': '', 'val': '' }, //supdpto
    'U_APOLLO_COO': { 'cod': '', 'val': '' }, //composicion 
    'U_APOLLO_DIV': { 'cod': '', 'val': '' }, //categoria
    'U_FILA': { 'cod': '', 'val': '' }, //presentacion
    'U_APOLLO_S_GROUP': { 'cod': '', 'val': '' }, //temporada catalogo
  }

  let body_modal = document.querySelector('#div_preview_save .body_modal'); //referenciamos al body del modal
  let article = document.createElement('div'); //este es el componente articulo a mostrar
  let title=document.createElement('div');
      title.innerHTML="<span>"+itemname+"</span>"
  article.appendChild(title);
  let table_sku=document.createElement('div',{className:'table_article_preview'});
  let head_sku = document.createElement('div');
      head_sku.className='head_sku';
      let th_sku=document.createElement('div');      
      let th_barcode=document.createElement('div');
      let th_dun=document.createElement('div');
      th_sku.innerHTML = 'SKU';
      th_barcode.innerHTML='BARCODE';
      th_dun.innerHTML='DUN';
  head_sku.appendChild(th_sku);
  head_sku.appendChild(th_barcode);   
  head_sku.appendChild(th_dun);
  table_sku.appendChild(head_sku);
  article.appendChild(table_sku);      

  let body_sku = document.createElement('div');
  // arr_skus=getCodesSku();
  arr_skus = [  { 'sku': '50.1000-BLA-XS', 'barcode': 'BARCODEBARCODE', 'dun': 'DUNDUNDUNDUN' },
                { 'sku': '50.1000-BLA-S', 'barcode': 'BARCODEBARCODE', 'dun': 'DUNDUNDUNDUN' },
                { 'sku': '50.1000-BLA-M', 'barcode': 'BARCODEBARCODE', 'dun': 'DUNDUNDUNDUN' },
                { 'sku': '50.1000-BLA-L', 'barcode': 'BARCODEBARCODE', 'dun': 'DUNDUNDUNDUN' },
                { 'sku': '50.1000-BLA-XL', 'barcode': 'BARCODEBARCODE', 'dun': 'DUNDUNDUNDUN' },
                { 'sku': '50.1000-BLA-XXL', 'barcode': 'BARCODEBARCODE', 'dun': 'DUNDUNDUNDUN' }] //ARRAY DE PRUEBA
  arr_skus.forEach(function(item) {
    
  });
  
  body_modal.appendChild(article);
  // console.log(body_modal);
  // let div2=document.createElement(div1);
  //...
  article.className = 'article_preview';
  title.className='title_article_preview';
  table_sku.className='table_sku_preview';

  
  

}