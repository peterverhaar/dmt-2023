<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="letter">
        <html>
            <head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
                
                <title><!-- title from head --></title>
            </head>  
 <body>
                <title><!-- title from head --></title>
            
                 
                    
                    <h2><xsl:value-of select="head"/>
                    </h2>  
                    <p> <xsl:value-of select="body/greeting"/></p>  
                    <p><xsl:value-of select="body/p"/></p>  
                    
                    <p><xsl:value-of select="body/salute"/></p>    
                    <p align="center"><xsl:value-of select="body/signed"/></p> 
                
            </body>
        </html>
      
    </xsl:template>


</xsl:stylesheet>
