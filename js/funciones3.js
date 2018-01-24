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
                $("#listado1").html("");
                if ( console && console.log ) {
                    console.log( " data success : "+ data.success 
                        + " \n data msg : "+ data.message 
                        + " \n textStatus : " + textStatus
                        + " \n jqXHR.status : " + jqXHR.status );
                }
                for(var i=0; i<data.datos.length;i++){
                                var descrip= data.datos[i].dl_descripcion;
                                textonuevo = descrip.substr(0,15);
                                fila ='<a href="hoja3.html?id='+data.datos[i].dl_id+'"><table border="1"><tr><td><div class="row"><div class="col-xs-4"><font size="3">'+data.datos[i].dl_nombre+'</font></div></td></tr></table>';
                                fila +='<div class="col-xs-8">';
                                $("#listado1").append(fila);
                }

                $("#listado2").html("");
                if ( console && console.log ) {
                    console.log( " data success : "+ data.success 
                        + " \n data msg : "+ data.message 
                        + " \n textStatus : " + textStatus
                        + " \n jqXHR.status : " + jqXHR.status );
                }
                for(var i=0; i<data.datos.length;i++){
                                var descrip= data.datos[i].dl_descripcion;
                                textonuevo = descrip.substr(0,15);
                                fila ='<a href="hoja3.html?id='+data.datos[i].dl_id+'"><table border="1"><tr><td><div class="row"><div class="col-xs-4"><font size="3">'+data.datos[i].dl_categoria_nombre+'</font></div></td></tr></table>';
                                fila +='<div class="col-xs-8">';
                                $("#listado2").append(fila);
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