<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="letter">
        <div width="75%" style="background-color: #eff2f7; margin-left: 50px; margin-right: 50px; padding: 50px; "/>
 
        <html>
            <head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
                
                <title>
                    <xsl:value-of select="head"/>
                </title>
            </head>  
            <body>
                
                <h2>
                    <xsl:value-of select="head"/>
                </h2>  
                <p>
                    <xsl:value-of select="body/greeting"/>
                </p>
                <p>
                    <xsl:value-of select="body/p"/>
                </p>  
                
                <p>
                    <xsl:value-of select="body/salute"/>
                </p>    
                <p align="center">
                    <xsl:value-of select="body/signed"/>
                </p>  
                
            </body>
        </html>

      
    </xsl:template>


</xsl:stylesheet>
