<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscripción de voluntarios || Miyerlandi</title>
    <!-- Estilos de la pagina -->
    <link rel="stylesheet" href="CSS/style.css" />
    <link rel="stylesheet" href="CSS/forms.css" />
    <link rel="stylesheet" href="CSS/Fonts.css" />

    <!-- Fuentes externas -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.3/dist/sweetalert2.min.css" rel="stylesheet">

    <!-- JS de la pagina -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
    <?php
        include_once("Reusable/header.php");
    ?>
    <main>
        
        <form action="" method="post" id="volunteerRegistry">
            <Fieldset id="FormWrapper">
                <legend>Inscripción de voluntarios</legend>
                <div class="confirmationWrapper">
                    <p>¡Hola!</p>
                    <br>
                    <p>Construyamos juntos <b>#UnRenacerParaCali</b>.</p>
                    <br>
                    <p>Bienvenido/a, estamos felices de que quieras hacer parte del grupo de ciudadanos voluntarios que acompañarán a Miyerlandi en su camino a la Alcaldía.</p>
                    <br>
                    <p>Por favor, ingresa tus datos de contacto y pronto nos comunicaremos contigo.</p>
                    <br>
                    <p>En cumplimiento de la Ley 1581 de 2012, que desarrolla el derecho de habeas data, solicitamos su autorización para que el Movimiento un Renacer para Cali, que avala la Candidatura de Miyerlandi a la alcaldía de Santiago de Cali, en calidad de responsable del tratamiento pueda recopilar, almacenar, archivar, copiar y analizar los datos diligenciados.</p>
                    <div id="checkWrapper">
                        <label for="checkInput">
                        <input type="checkbox" name="checkInput" id="checkInput" onChange="showForm()" required>Acepto</label>
                    </div>
                </div> 


                <div class="inputWrapper" style="display:none">
                    <div class="inputGroup">
                        <label for="nameInput">Nombres</label>
                        <input type="text" id="nameInput" >
                    </div>
                    
                    <div class="inputGroup">
                        <label for="lastNameInput">Apellidos</label>
                        <input type="text" id="lastNameInput" >
                    </div> 
                    <div class="inputGroup">
                        <label for="ageInput">Edad</label>
                        <input type="number" id="ageInput" >
                    </div>
                    <div class="inputGroup">
                        <label for="occupationInput">Ocupación</label>
                        <select name="occupationInput" id="occupationInput">
                            <option value="" selected>Seleccione...</option>
                            <option value="1">Lider comunitario</option>
                            <option value="2">Empresario</option>
                            <option value="3">estudiante</option>
                            <option value="4">Jefe de Hogar</option>
                            <option value="5">Empleado</option>
                            <option value="6">Otro</option>
                        </select>
                    </div>
                    <div class="inputGroup">
                        <label for="addressInput">Direccion</label>
                        <input type="text" id="addressInput" >
                    </div>

                    <div class="inputGroup">
                        <label for="neightborhoodInput">Barrio</label>
                        <input type="text" id="neightborhoodInput" >
                    </div>

                    <div class="inputGroup">
                        <label for="phoneInput">Número de teléfono</label>
                        <input type="tel" id="phoneInput" >
                    </div>

                    <div class="inputGroup">
                        <label for="emailInput">Correo electrónico</label>
                        <input type="email" id="emailInput" >
                    </div>
                    <div class="commentForm">
                        <label for="commentInput">Comentarios</label>
                        <textarea name="commentInput" id="commentInput" cols="30" rows="10"></textarea>
                    </div>
                    <div id="buttonWrapper">
                        <input type="submit" id="submitForm" value="Enviar">
                    </div>
                </div>
                
                    
                             
                    
                
            </Fieldset>
        </form>

    </main>
    <?php
    include_once("Reusable/footer.php");
    ?>
    <script src="JS/formValidation.js"></script>
    <script>
        const showForm = function(){
            check = document.getElementById("checkInput");
            formWrapper = document.querySelector(".inputWrapper");
            if(check.checked){
                console.log("Check!");
                formWrapper.style.display = "flex";
            }else{
                console.log("NOT Check");
                formWrapper.style.display = "none";
            }
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.3/dist/sweetalert2.all.min.js"></script>
</body>
</html>