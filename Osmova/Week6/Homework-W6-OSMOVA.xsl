<!-- exercise 1 -->
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

<!-- exercise 2 -->

<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="bibliography">
        <html>
            <header>
                <title>
                    Bibliography
                </title>
            </header>
            <body>
                <p>
                <xsl:for-each select="item">
                <xsl:value-of select="fullTitle"/> <br/>
                </xsl:for-each>
                </p>
                
            </body>
            
        </html>
      
    </xsl:template>


</xsl:stylesheet>
        

<!-- exercise 3 -->
        
<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="bibliography">
        <html>
            <header>
                <title>
                    Bibliography
                </title>
            </header>
            <body>
                <p>
                <xsl:for-each select="item">
                    <!-- this is to sort the title alphabetically -->
                    <xsl:sort select="fullTitle"/>
                <xsl:value-of select="fullTitle"/> <br/>
                </xsl:for-each>
                </p>
                
            </body>
            
        </html>
      
    </xsl:template>


</xsl:stylesheet>


<!-- exercise 4 -->

<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="bibliography">
        <html>
            <header>
                <title>
                    Bibliography
                </title>
            </header>
            <body>
                <p>
                <xsl:for-each select="item">
                    <!-- this is to sort the title alphabetically -->
                    <xsl:sort select="fullTitle"/>
                <xsl:value-of select="author/lastName"/>,
                <xsl:value-of select="author/firstName"/>.
                <i><xsl:value-of select="fullTitle"/></i>.
                <xsl:value-of select="imprint/place"/> &#x3A;
                <xsl:value-of select="imprint/publisher"/>,
                <xsl:value-of select="imprint/date"/> <br/>
                </xsl:for-each>
                </p>
                
            </body>
            
        </html>
      
    </xsl:template>


</xsl:stylesheet>


<!-- exercise 5 -->
        <?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!-- Template to match the 'bibliography' element -->
    <xsl:template match="bibliography">
        <html>
            <header>
                <title>
                    Bibliography
                </title>
            </header>
            <body>
                <h2>English titles</h2>
                <p>
                    <xsl:apply-templates select="item[language/@languageCode = 'eng']">
                        <xsl:sort select="fullTitle"/>
                    </xsl:apply-templates>
                </p>
                <h2>Titles written after 2000</h2>
                <p>
                    <xsl:apply-templates select="item[imprint/date &gt; 2000]">
                        <xsl:sort select="fullTitle"/>
                    </xsl:apply-templates>
                </p>
            </body>
        </html>
    </xsl:template>
    
    <!-- Template to match 'item' elements -->
    <xsl:template match="item">
        <xsl:value-of select="fullTitle" /><br/>
    </xsl:template>
</xsl:stylesheet>
