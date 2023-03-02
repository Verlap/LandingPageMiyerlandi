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

    <!-- JS de la pagina -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
    <?php
        include_once("Reusable/header.php");
    ?>
    <main>
        
        <form action="" method="post">
            <Fieldset id="FormWrapper">
                <legend>Inscripción de voluntarios</legend>
                    
                <div class="form-group">
                    <div class="inputWrapper">
                        <label for="nameInput">Nombres</label>
                        <input type="text" id="nameInput" >
                    </div>
                    
                    <div class="inputWrapper">
                        <label for="lastNameInput">Apellidos</label>
                        <input type="text" id="lastNameInput" >
                    </div> 
                    <div class="inputWrapper">
                        <label for="ageInput">Edad</label>
                        <input type="number" id="ageInput" >
                    </div>
                    <div class="inputWrapper">
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
                    <div class="inputWrapper">
                        <label for="addressInpt">Direccion</label>
                        <input type="text" id="addressInpt" >
                    </div>

                    <div class="inputWrapper">
                        <label for="neightborhoodInput">Barrio</label>
                        <input type="text" id="neightborhoodInput" >
                    </div>

                    <div class="inputWrapper">
                        <label for="phoneInput">Número de teléfono</label>
                        <input type="tel" id="phoneInput" >
                    </div>

                    <div class="inputWrapper">
                        <label for="emailInput">Correo electrónico</label>
                        <input type="email" id="emailInput" >
                    </div>
                </div>
                <div class="commentForm">
                    <label for="commentInput">Comentarios</label>
                    <textarea name="commentInput" id="commentInput" cols="30" rows="10"></textarea>
                </div>
                <div class="form-group">
                    <p>En cumplimiento de la Ley 1581 de 2012, que desarrolla el derecho de habeas data, solicitamos su autorización para que el Movimiento un Renacer para Cali, que avala la Candidatura de Miyerlandi a la alcaldía de Santiago de Cali, en calidad de responsable del tratamiento pueda recopilar, almacenar, archivar, copiar y analizar los datos diligenciados.</p>
                    <div id="checkWrapper">
                        <label for="checkInput">Acepto</label>
                        <input type="checkbox" name="checkInput" id="checkInput">
                    </div>
                </div>              
                    
                <div id="buttonWrapper"></div>
            </Fieldset>
        </form>

    </main>
    <?php
    include_once("Reusable/footer.php");
    ?>

    <script src="JS/carrouselImage.js"></script>
    <script>
        function redirectForm(){
            location.href = "volunteerSignUp.php";
        }
    </script>
</body>
</html>