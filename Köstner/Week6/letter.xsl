<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="html">
<html>
    <head><meta http-equiv="content-type" content="textml; charset=utf-8"/>
        <title><!-- title from head --></title>
        </head>
    <body>
        <h2><!-- title from head --></h2>
        <p><!-- Opening salute from body/gretting --></p>
        <p>>!-- Body of the letter from body/p --></p>
        
        <p>>!-- Clsoing salute from body/salute --></p>
        <p align="center"><!-- Name of the letter's sender from body/signed--></p>
    </body>
</html>
      
    </xsl:template>

</xsl:stylesheet>
