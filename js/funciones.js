    $(document).ready(function(){
   
        var getlista = function (){
            var datax = {
                "Accion":"listar"
            }
            $.ajax({
                data: datax, 
                type: "GET",
                dataType: "json", 
                url: "controllers/controllerdlicores.php", 
            })
            .done(function( data, textStatus, jqXHR ) {
                $("#listado").html("");
                if ( console && console.log ) {
                    console.log( " data success : "+ data.success 
                        + " \n data msg : "+ data.message 
                        + " \n textStatus : " + textStatus
                        + " \n jqXHR.status : " + jqXHR.status );
                }
                for(var i=0; i<data.datos.length;i++){
                                var descrip= data.datos[i].dl_descripcion;
                                textonuevo = descrip.substr(0,15);
                                    console.log(textonuevo.length);
                                fila ='<a href="hoja1.html?id='+data.datos[i].dl_id+'"><div class="row"><div class="col-xs-4"><img src="'+data.datos[i].dl_urlimagens+'"></div>';
                                fila +='<div class="col-xs-8">';
                                fila +='<div class="row"><div class="col-xs-12"><font size="5">'+data.datos[i].dl_nombre+'</font></div></div>';
                                fila +='<div class="row"><div class="col-xs-12"><font size="4">Categoria:'+data.datos[i].dl_categoria_nombre+'</font></div></div>';
                                fila +='<div class="row"><div class="col-xs-12"><font size="2">Descripcion:'+textonuevo+'...</font></div></div>';
                                fila +='</div></div></a><br>';
                                $("#listado").append(fila);
                }
            })
            .fail(function( jqXHR, textStatus, errorThrown ) {
                if ( console && console.log ) {
                    console.log( " La solicitud getlista ha fallado,  textStatus : " +  textStatus 
                        + " \n errorThrown : "+ errorThrown
                        + " \n textStatus : " + textStatus
                        + " \n jqXHR.status : " + jqXHR.status );
                }
            });
        }
        getlista();
    });