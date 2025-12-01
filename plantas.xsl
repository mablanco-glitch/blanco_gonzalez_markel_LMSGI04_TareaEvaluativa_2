<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8"/>
	
	<xsl:template match="jardinBotanico">
		
		<html lang="es">

			<head>
				<link href="css/estilo.css" rel="stylesheet" type="text/css" />
				<meta charset="utf-8"/>
				<meta name="description" content="Página principal" />
				<title>titulo de la web</title>
			</head>

			<body>
				<header>
					<img src= "../img/logotipo.png" alt= "Reservas" />
					<a href="zonas.xml">Zonas</a>
					<a href="plantas.xml">Plantas</a>
					<a href="actividades.xml">Actividades</a>
				</header>
				
				<main id="jardinbotanico">
					<h1>PLANTAS</h1>
					
					<xsl:apply-templates select="plantas"/>
					
				</main>

				<footer>
					<address>&#169; Desarrollado por info@birt.eus</address>
				</footer>
			</body>
		</html> 
        
	</xsl:template>
	
	<xsl:template match="planta[@familia = 'Orchidaceae']">
		<article class="articulo">
			<img class="imagen" src="img/OrquideaVioleta.jpg"/>
			<h2><a href="https://es.wikipedia.org/wiki/Orchidaceae" target="_blank"><xsl:value-of select="nombreComun"/></a></h2>
			<h3><xsl:value-of select="luminosidad"/></h3>
		</article>
	</xsl:template>
	
	<xsl:template match="planta[@familia = 'Cactaceae']">
		<article class="articulo">			
			<img class="imagen" src="img/CactusBola.jpg"/>
			<h2><a href="https://es.wikipedia.org/wiki/Cactacea" target="_blank"><xsl:value-of select="nombreComun"/></a></h2>
			<h3><xsl:value-of select="luminosidad"/></h3>
				<img class="alta-icono" src="img/Alta.png"/>
		</article>
	</xsl:template>
	
	<xsl:template match="planta[@familia = 'Arecaceae']">
		<article class="articulo">			
			<img class="imagen" src="img/PalmeraImperial.jpg"/>
			<h2><a href="https://es.wikipedia.org/wiki/Arecacea" target="_blank"><xsl:value-of select="nombreComun"/></a></h2>
			<h3><xsl:value-of select="luminosidad"/></h3>
				<img class="alta-icono" src="img/Alta.png"/>
		</article>
	</xsl:template>
    
</xsl:stylesheet>

