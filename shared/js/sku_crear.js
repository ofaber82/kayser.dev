var color;
var id_cat_before_click,id_cat_after_click, id_cat_actual;
var campos_llenos;
$(document).ready(function() {
  // showModalAlert('Mensaje de Bienvenida','Hola!, Empieza a crear tu SKU', 'div_modal_alert1');//esta funcion esta en otro archivo: modal.js
  $(".opcion_config").click(function() {
    $("#div_crud_item").css('visibility','visible' );
  });
  $("#select_item_crud").change(function() {
    $("#div_tabla_item>tbody_div").html('');
    $("#div_tabla_item").css('visibility', 'visible');
    // console.log($(this).val());
    cargarTablaSeccion($(this).val());
  });
  $("#img_close_crud_item").click(function() {
    /* Act on the event */
    $("#select_item_crud").val("");
    $("#div_crud_item").css('visibility','hidden');
    $("#div_tabla_item>tbody_div").html('');
    $("#div_tabla_item").css('visibility','hidden');
  });
  cargarCategoriaCrear("div_cat_dama");
  cargarSelectsSku('','');//inicialmente cargamos todos los select independientes //raro pero esta llamada se termina antes que la llamada en la funcion anterior
  $(".cont_img_categoria").click(function() {
    id_cat_after_click=$(this).attr('id');
    if(id_cat_actual!==id_cat_after_click){
      $(".cont_fila_crear_sku :input").each(function() {
        if($(this).val()!=="" && $(this).val()!==null) {
            campos_llenos=1;
            return; // igual recorre todo el bucle
        }
      });
      if(campos_llenos==1){
        if(confirm("Existen campos con contenido que se perderán si cambia opción.\nDesea cambiar de Departamento")){
          campos_llenos=0;
          document.getElementById("div_sel_opciones").innerHTML="";
          cargarCategoriaCrear(id_cat_after_click);
          $("#select_sku_color").selectpicker("deselectAll");
        }
      }else {
        cargarCategoriaCrear(id_cat_after_click);
        $("#select_sku_color").selectpicker("deselectAll");
      }
    }
  });
  $("#select_sku_subdpto").change(function() { cargarSelectsSku('Subdpto', $(this).val()) });
  $("#select_sku_prenda").change(function() { cargarSelectsSku('Kayser_SEASON', $(this).val()) });
});
// FUNCION QUE MUESTRA EL PANEL CRUD SEGUN EL DPTO (mujer, varon, lola, ...)
function cargarCategoriaCrear(id_cat) {
  $(".cont_fila_crear_sku :input").val("");  // reseteamos los input
  id_cat_actual=id_cat;
  color=$("#"+id_cat).css('background-color');
  $(".cont_img_categoria").css('-webkit-transform', 'none');//quitamos a todos el efecto scale
  $(".cont_img_categoria").css('transform', 'none');//quitamos a todos el efecto scale
  $(".cont_img_categoria").css('-webkit-filer', 'opacity(.4)');//quitamos a todos el efecto scale
  $(".cont_img_categoria").css('filter', 'opacity(.4)');//quitamos a todos el efecto scale
  $("#"+id_cat).css('-webkit-filter', 'none)');//escalamos solo el cliqueado
  $("#"+id_cat).css('filter', 'none');//escalamos solo el cliqueado
  $("#"+id_cat).css('-webkit-transform', 'scale(1.1)');//escalamos solo el cliqueado
  $("#"+id_cat).css('transform', 'scale(1.1)');//escalamos solo el cliqueado
  $(".cont_img_categoria:hover").css('-webkit-filer', 'none !important');
  $(".cont_img_categoria:hover").css('filer', 'none !important');
  $(".comp_crear_sku").css('background-color', color);
  $('.borrar_contacto').attr('name');
  cargarSelectsSku('Kayser_OITB', id_cat.substr(8,id_cat.length));
}

//FUNCION QUE CARGA LOS SELECT con las OPTIONS de la API.
function cargarSelectsSku(nombre_tabla_padre, valor_tabla_padre) {
  var recorrido=0;
  if(nombre_tabla_padre=="")
    var parametros = { 'opcion' : 'cargar_selects_independientes'};
  else
    var parametros = { 'opcion' : 'cargar_selects_dependientes', 'nom_tabla_padre' :  nombre_tabla_padre, 'val_tabla_padre' : valor_tabla_padre };
  $.ajax({
    url: 'sku_crear.php',
    type: 'post',
    dataType: 'json',
    data: parametros,
    beforeSend : function () {
    },
    success : function(data) {
      if(data[0].error){
        console.log(data[0].error);
      }else {
        console.log(data);
        var long_data=data.length;
        if(parametros['opcion']=='cargar_selects_dependientes'){
         recorrido=1;//para que no considere el primer elemento de la data obtenida de la api
         for (var valor of data[0])
           $("select[name='"+valor+"']").html("<option value=''></option>");//reseteamos las opciones a vacio
        }
        for (i=recorrido; i<long_data; i++) {
          if(data[i].tabla=='Talla'){
            document.getElementById("div_sel_grupo_opciones").innerHTML="";
            fillSelectMultiplesGruposFromArray(data[i].options, "div_sel_grupo_opciones",false);
          }else {
            optito="";
            if(data[i].tabla=='Color'){
              data[i].options.forEach(function(item,index){ optito+="<option value='" + item['id'] +"'>" + item['name'] + "</option>"; });
              $("select[name='"+data[i].tabla+"']").html(optito);
              $('#select_sku_color').selectpicker({style: 'btn-default fla'}); // ESTABLECEMOS EL FUNCIONAMIENTO DEL selectpicker
            }else {
              data[i].options.forEach(function(item,index){ optito+="<option value='" + item['id'] +"'>" + item['name'] + "</option>"; });
              $("select[name='"+data[i].tabla+"']").html('<option value=""></option>'+optito);
            }
          }
        }
      }
    },
    error: function() {
      console.log("error");
    }
  });
}

// FUNCION QUE CARGA LA TABLA SECCION CRUD EN EL POPAP (Dpto, Subdpto, Marca, Prenda, ...)
function cargarTablaSeccion(tabla) {
  //INICIALMENTE REMOVEMOS LAS CELDAS DE LA CABCERA Y LAS FILAS DE LA TABLA EXISTENTES
  fila_head=document.getElementById('div_head_tr')
  while (fila_head.firstChild) { fila_head.removeChild(fila_head.firstChild); }
  body=document.getElementById('div_tbody');
  while (body.firstChild) { body.removeChild(body.firstChild); }
  var parametros = { 'opcion' : 'cargar_seccion', 'nom_tabla' :  tabla };
  $.ajax({
    url: 'sku_seccion_crud.php',
    type: 'post',
    dataType: 'json',
    data: parametros,
    beforeSend : function () {
    },
    success : function(data) {
      if(!!data['error']){
        console.log(data[0].error);
      }else {
        console.log(data);
        //creamos las celdas para las columnas
        data.cabeceras.forEach(function(item,index){
          div_celda=document.createElement('div');
          if(item=="Nombre")
            div_celda.className="th col";
          else
            div_celda.className="th col-1 col-lg-1";
          div_celda.innerHTML=item;
          fila_head.appendChild(div_celda);
        });
        fila_head.insertAdjacentHTML('beforeend','<div class="th col-1 col-lg-1"></div><div class="th col-1 col-lg-1"></div><div class="th col-1 col-lg-1"></div><div class="">&nbsp&nbsp&nbsp</div>')

        //ahora crearemos las filas con celdas para el tbody_div
        data.filas.forEach(function(item,index){
          div_fila=document.createElement('div');
          div_fila.className="row tr";
          !!item['Codigo']? codigo=item['Codigo'] : codigo=item['Nombre'];
          for (var index in item ) {
            div_celda=document.createElement('div');
            if(index=="Codigo")
              div_celda.className="td col-1 col-lg-1 col not_editable";
            else if(index=="Nombre")
              div_celda.className="td col editable";
            else
              div_celda.className="td col-1 col-lg-1 editable";
            div_celda.id=codigo+'_'+index;
            div_celda.innerHTML=item[index];
            div_fila.appendChild(div_celda);
          }
          celdas_img='<div class="td col-1 col-lg-1"><img src="../shared/img/save.png" alt="" disabled class="icon_fila icon_save disabled" id="img_save_'+codigo+'"></div>';
          celdas_img+='<div class="td col-1 col-lg-1"><img src="../shared/img/edit.png" alt="" class="icon_fila icon_edit" id="img_edit_'+codigo+'"><img src="../shared/img/edit_cancel.png" alt="" class="icon_fila icon_edit_cancel invisible" id=""></div>';
          celdas_img+='<div class="td col-1 col-lg-1"><img src="../shared/img/delete.png" alt="" class="icon_fila icon_delete" id="img_delete_'+codigo+'"></div>';
          div_fila.insertAdjacentHTML('beforeend',celdas_img);
          body.appendChild(div_fila);
        })
        // *** CREAMOS LOS EVENTOS PARA LOS ICONOS CREADOS ***/
        contenido_original=[];
        document.querySelectorAll(".icon_save").forEach(elemento => elemento.style.pointerEvents = "none");
        document.querySelectorAll(".icon_save").forEach(elemento => elemento.onclick = function() {
          console.log("Aca llamaremos a la funcion GUARDAR O ACTUALIZAR pasandole el id de la fila que se esta editando o creando");
          this.style.pointerEvents = "none";
          this.parentNode.nextSibling.lastChild.classList.toggle('invisible');
          this.parentNode.nextSibling.firstChild.classList.toggle('invisible');
          /*************************************************/
          /**** ACA FALTA VALIDAR Y SI SE HACE QUERY, ACTUALIZAR EN LAS CELDAS DIV, LOS NUEVOS VALORES ***/
          /*************************************************/

          this.parentNode.parentNode.classList.toggle("editing"); // agregamos esta clase a la fila para cambiarle el fondo
          getAllNodesEqualType(this.parentNode.nextSibling.firstChild,2,'.icon_edit, .icon_delete').forEach(function(ele) {
            ele.style.pointerEvents = "auto";
            ele.classList.toggle("disabled");
          })

        });
        document.querySelectorAll(".icon_edit").forEach(elemento => elemento.onclick = function() {
          this.classList.toggle("invisible");//ocultamos el icon_edit
          this.nextSibling.classList.toggle("invisible");//mostramos el icon_edit_cancel
          this.parentNode.parentNode.classList.toggle("editing"); // agregamos esta clase a la fila para cambiarle el fondo
          this.parentNode.parentNode.querySelectorAll('.editable').forEach(function(el){ //RECORREMOS TODAS LAS CELDAS QUE SON EDITABLES
            contenido_original[el.id]=el.innerHTML;
            el.innerHTML="<input type='text' value='"+contenido_original[el.id]+"'/>";
          });
          this.parentNode.previousSibling.firstChild.classList.toggle("disabled"); // QUITAMOS LA CLASE disabled al icon_save
          this.parentNode.previousSibling.firstChild.style.pointerEvents = "auto"; // activamos el evento click en el icon_save
          getAllNodesEqualType(this,2,'.icon_edit, .icon_delete').forEach(function(ele) {
            ele.style.pointerEvents = "none";
            ele.classList.toggle("disabled");
          })
        });
        document.querySelectorAll(".icon_edit_cancel").forEach(elemento => elemento.onclick = function() {
          this.parentNode.parentNode.querySelectorAll('.editable').forEach(function(el){
            el.innerHTML=contenido_original[el.id];
          });
          this.parentNode.parentNode.classList.toggle('editing'); // le quitamos a la fila la clase qe le cambia el background-color
          this.classList.toggle("invisible"); // ocultamos este icon_edit_cancel
          this.previousSibling.classList.toggle('invisible'); // mostramos icon_edit
          this.parentNode.previousSibling.firstChild.classList.toggle("disabled"); // agregamos clas disabled del icon_save
          this.parentNode.previousSibling.firstChild.style.pointerEvents = "none"; // bloqueamos el evento click del icon_save
          getAllNodesEqualType(this.previousSibling,2,'.icon_edit, .icon_delete').forEach(function(ele) {
            ele.style.pointerEvents = "auto";
            ele.classList.toggle("disabled");
          })
        });
        document.querySelectorAll(".icon_delete").forEach(elemento => elemento.onclick = function() {
          alert(this.id);
        });
      }
    },
    error: function() {
      console.log("error");
    }
  });
}

// **** FUNCIION GENERAL ****
//FUNCION QUE OBTIENE TODOS LOS HERMANOS, pasandode los siguientes parametros:
//  nodo actual: El nodo capturado, de quien hay que encontrar sus hijos
//  alcance:     Hasta que padres buscamos,
//  selector: es para limitar la busqueda, seleccionando solo las que los selectores indiquen
//  si alcance=0, buscaremos hasta los hermanos, si alcance=1 buscaremos hermanos y primos hermanos, alcance=2 buscaremos, hermanos, primos hermanos y primos lejanos; y asi sucesivamentes
function getAllNodesEqualType(nodo,alcance,selector){
  let cousinsList=[];
  if(!selector || selector==''){
    selector=nodo.tagName;
  }
  if (alcance==0)
    cousins=nodo.parentNode.querySelectorAll(selector);
  else if(alcance==1)
    cousins=nodo.parentNode.parentNode.querySelectorAll(selector);
  else if (alcance==2)
    cousins=nodo.parentNode.parentNode.parentNode.querySelectorAll(selector);
  else
    cousins=nodo.parentNode.parentNode.parentNode.parentNode.querySelectorAll(selector);
  cousins.forEach( function(cous) {
    if(cous!==nodo)
      cousinsList.push(cous)
  })
  console.log(cousinsList);
  return cousinsList;
}
