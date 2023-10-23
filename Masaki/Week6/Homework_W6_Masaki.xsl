<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="letter">
        <html>Homework-W6-Masaki.xsl
            <head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
        
                <title>Letter from De Erven F. Bohn to W. Blackwood and sons</title>
            </head>  
            <body>
                <h2> 
                    <xsl:value-of select="letter/head"/> 
                </h2>  
                <p>Dear Sirs!</p>  
                <p>We beg to apply to you the kind request for sending us one week before <lb/>
                    the publication one copy of Bulwer's novel: Kenelm Chillingly, His <lb/>
                    adventures and opinions, which book you have in the press, for what we <lb/>
                    are inclined to pay 30£. When it were possible to send us already now the <lb/>
                    first volume by the post; it would be yet more agreeable. Mr H.A. Kramers <lb/>
                    at Rotterdam readily will be our pledge.
                </p>  
                
                <p>yours truly</p>    
                <p align="center">De Erven F. Bohn</p>  
                
            </body>
        </html>
      
    </xsl:template>


</xsl:stylesheet>
