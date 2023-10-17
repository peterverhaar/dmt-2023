<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="bibliography">

        <html>
            <head>
                <title>
                    Bibliography
                </title>
            </head>
            <body>
                <p>
                    <xsl:value-of select="item/fullTitle"/> <br/>
                    <xsl:value-of select="item/fullTitle"/> <br/>
                    <xsl:value-of select="item/fullTitle"/> <br/>
                    <xsl:value-of select="item/fullTitle"/> <br/>
                    <xsl:value-of select="item/fullTitle"/> <br/>
                    <xsl:value-of select="item/fullTitle"/> <br/>
                    <xsl:value-of select="item/fullTitle"/> <br/>
                    <xsl:value-of select="item/fullTitle"/> <br/>
                </p>
            </body>
        </html>
      
    </xsl:template>


</xsl:stylesheet>
