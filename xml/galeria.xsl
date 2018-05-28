<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="galeria">

<html>
<head>
 <link rel="stylesheet" type="text/css" href="../css/proyecto.css"/>
<title>Galeria</title>
</head>
<body>
<header>
  <!--Menu de Navegación-->
  <nav>
    <div class="navbar">
      <a href="../index.html">Home</a>
      <div class="dropdown">
        <button class="dropbtn">Modelos 
        </button>
        <div class="dropdown-content">
          <a href="galeria.xml">BMW</a>
          <a href="galeria2.xml">Seat</a>
          <a href="galeria3.xml">Opel</a>
        </div>
        </div>
          <div class="dropdown">
            <button class="dropbtn">Financiación 
            </button>
        <div class="dropdown-content">
          <a href="https://www.caixabank.es/particular/home/particulares_es.html">LaCaixa</a>
          <a href="https://www.bankia.es/es/particulares">Bankia</a>
          <a href="https://ing.ingdirect.es/pfm/#login/">ING</a>
        </div>
          </div>
          <a href="../html/contacto.html">Contacto</a>
          <a class="login" href="../html/registro.html">Registrarse</a>
          <a class="login" href="../html/loggin.html">Iniciar sesión</a>
    </div>  
  </nav>
</header>

<h1 id="xml">Modelos principales</h1>

<xsl:for-each select="imagen">
<div id="imagen" style="float: left; width: 300px;">
  <h3 style="text-align:center;">Modelo <xsl:value-of select="@numero"/></h3>
      <a>
        <xsl:attribute name="href">
        <xsl:value-of select="web/@enlace"/>
        </xsl:attribute>
        <xsl:value-of select="web"/>
      <xsl:element name="img">
       <xsl:attribute name="src">
         <xsl:value-of select="image/@ruta"/>
       </xsl:attribute>
       <xsl:attribute name="height">
         150
       </xsl:attribute>
     </xsl:element>  
     </a>
</div>
</xsl:for-each>
 <div id="footer">
       <a href="../html/contacto.html"><h2>Contacto</h2></a>
    <ul>
      <li>Fundador: Juan David Lozano Cuadros</li>
      <li>Telefono: 999999999</li>
      <li>Email: Mi.email@email.com</li>
      <li>Facebook: Compratucoche</li>
    </ul>
</div> 
</body>
</html>
</xsl:template>
</xsl:stylesheet>
