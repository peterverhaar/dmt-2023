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
                    <xsl:for-each select="item"> <br/>
                    <xsl:value-of select="fullTitle"/> <br/>
					</xsl:for-each>
                </p>
            </body>
        </html>
      
    </xsl:template>


</xsl:stylesheet>
