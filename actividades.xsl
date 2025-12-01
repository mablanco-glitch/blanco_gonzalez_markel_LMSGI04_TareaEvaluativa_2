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
				
				<main>
					<h1>Actividades del mes 11</h1>
					
					<xsl:variable name="mes" select="11"/>
					
					<xsl:apply-templates select="actividades/actividad[substring(fechaHora, 6, 2) = $mes]">
						<xsl:sort data-type="text" select="substring(fechaHora, 6, 5)" order="descending"/>
					</xsl:apply-templates>
		
				</main>

				<footer>
					<address>&#169; Desarrollado por info@birt.eus</address>
				</footer>
			</body>
		</html> 
 
    </xsl:template>
	
	<xsl:template match="actividad[@sala = 'InvernaderoTropical']">
		<article class="actividades">

			<h4><xsl:value-of select="titulo"/></h4>
			<h2>Fecha: <xsl:value-of select="substring(fechaHora, 1, 10)"/></h2>
			<h2>Hora: <xsl:value-of select="substring(fechaHora, 12, 5)"/></h2>
			<h2>Lugar: <xsl:value-of select="@sala"/></h2>
			<ul>
				<li><xsl:value-of select="responsables/responsable[@dni = '44658958D']/nomresponsable"/> - <xsl:value-of select="responsables/responsable[@dni = '44658958D']/email"/></li>
				<li><xsl:value-of select="responsables/responsable[@dni = '15478589T']/nomresponsable"/> - <xsl:value-of select="responsables/responsable[@dni = '15478589T']/email"/></li>
			</ul>
		</article>
	</xsl:template>
	
	<xsl:template match="actividad[@sala = 'JardínExterior']">
		<article class="actividades">
			
			<h4><xsl:value-of select="titulo"/></h4>
			<h2>Fecha: <xsl:value-of select="substring(fechaHora, 1, 10)"/></h2>
			<h2>Hora: <xsl:value-of select="substring(fechaHora, 12, 5)"/></h2>
			<h2>Lugar: <xsl:value-of select="@sala"/></h2>
			<ul>
				<li><xsl:value-of select="responsables/responsable/nomresponsable"/> - <xsl:value-of select="responsables/responsable/email"/></li>
			</ul>
		</article>
	</xsl:template>

	<xsl:template match="actividad[@sala = 'Auditorio']">
		<article class="actividades">
			
			<h4><xsl:value-of select="titulo"/></h4>
			<h2>Fecha: <xsl:value-of select="substring(fechaHora, 1, 10)"/></h2>
			<h2>Hora: <xsl:value-of select="substring(fechaHora, 12, 5)"/></h2>
			<h2>Lugar: <xsl:value-of select="@sala"/></h2>
			<ul>
				<li><xsl:value-of select="responsables/responsable/nomresponsable"/> - <xsl:value-of select="responsables/responsable/email"/></li>
			</ul>
		</article> 
	</xsl:template>

    
</xsl:stylesheet>

