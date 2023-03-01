<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Pagina principal || Miyerlandi</title>
		<!-- Estilos de la pagina -->
		<link rel="stylesheet" href="CSS/style.css" />
		<link rel="stylesheet" href="CSS/Fonts.css" />

		<!-- JS de la pagina -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	</head>
	<body>
		<header>
			<div id="HeaderLogo">
				<img
					src="Assets/MiyerlandiBrand/LogotypeColor.svg"
					alt="Logotipo de Miyerlandi" />
			</div>
		</header>
		<main>
			<div id="Banner" onclick="redirectForm()">
				<img
					src="Assets/MiyerlandiBrand/BannerMiyerlandi.jpg"
					alt="Banner web de Miyerlandi" />
			</div>
			<section>
				<div id="KnowMe">
					<h3>¿Quién es 
						Miyerlandi?</h3>
					<p>
					Soy Miyerlandi, hija de Lucrecia, madre cabeza de hogar y profesora de primaria; hermana de Janeth y mamá de Catalina, una adolescente inquieta, deportista y excelente estudiante. Desde hace más de 25 años trabajo por el bienestar de la comunidad caleña y, aunque deben recordarme por haber sido la secretaria de Salud durante la pandemia, lo cierto es que mi servicio a Cali y al cuidado de la vida tiene mucho más tiempo, antes como gerente de la ESE Centro, donde estuve 10 años, y la ESE Suroriente.
					</p>
					<img src="Assets/MiyerlandiBrand/LogotypeColor.svg" alt="Logo de Miyerlandi">
				</div>
				<div id="Video">
					<iframe src="https://www.youtube.com/embed/zplpuELVA5s" title="Miyerlandi Torres, ¿la primera alcaldesa de la ciudad de Cali?" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"></iframe>
				</div>
			</section>
			<section>
				<div id="Carrousel">
					<div id="back" ><b><</b></div>
					<div id="next" ><b>></b></div>
					<div id="image"></div>
				</div>
				<div id="FormDescription">
					
					
				<p><b>Es el sueño de un grupo de ciudadanos que trabajamos todos los días por construir, de manera participativa e incluyente, una mejor ciudad.</b></p>
				<br>
				<p>Tenemos como objetivo la consolidación de un proyecto de ciudad segura, cívica, sostenible e innovadora, en la que propios y visitantes podamos disfrutar de la oferta deportiva, gastronómica, cultural y ambiental que ofrece nuestra Sucursal del Cielo en sus zonas urbana y rural. Creemos que todos estos sueños son posibles si Miyerlandi, una mujer de resultados, berraca y trabajadora es elegida Alcaldesa de Santiago de Cali.
				</p>
				<br>
				<h4>Construyamos juntos <b>#UnRenacerParaCali</b></h4>
				</div>
			</section>
		</main>
		<footer>
			<div id="Copyright">
				<p>
					Diseñado por: Equipo de mercado Miyerlandi - Desarrollado por: Proveedor - COPYRIGHT &copy; 2023
				</p>
			</div>
			<div id="SocialNetwork">
				<a href="https://www.facebook.com/MiyerTorresA" class="social" target="_blank">
					<img
						src="Assets/SocialNetwork/FacebookLogoWhite.svg"
						alt="Facebook de Miyerlandi" />
				</a>
				<a href="https://twitter.com/MiyerTorresA" class="social" target="_blank">
					<img
						src="Assets/SocialNetwork/TwitterLogoWhite.svg"
						alt="Twitter de Miyerlandi" />
				</a>
				<a href="https://www.instagram.com/miyertorresa/" class="social" target="_blank">
					<img
						src="Assets/SocialNetwork/InstagramLogoWhite.svg"
						alt="Instagram de Miyerlandi" />
				</a>
			</div>
		</footer>

		<script src="JS/carrouselImage.js"></script>
		<script>
			function redirectForm(){
				location.href = "volunteerSignUp.php";
			}
		</script>
	</body>
</html>
