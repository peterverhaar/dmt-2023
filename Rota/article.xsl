<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <xsl:template match="article">
        
        
        <html>
            <head>
                
                <style>
                    
                    <![CDATA[
                    
                    @charset "UTF-8";
                    @import url("https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i");
                    @import url("https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i");
                    @import url("https://fonts.googleapis.com/css?family=Noto+Sans:400,700|Roboto:300,400,500");
                    
                    
                    body {
                    color: black;
                    font-family: "Brill", "Georgia", serif;
                    background-color: #ffffff;
                    margin-left: 15%;
                    margin-right: 15%;
                    }
                    
                    h1 {
                    color: #004489; 
                    }
                    h2 {
                    color: #080547;
                    margin: 0;
                    }
                    
                    table {
                    width: 100%;
                    }
                    
                    div.metadata {
                        font-style: italic ; 
                        font-weight: bold;
                        margin: 0; 
                    }
                    
                    p {
                        margin-top: 0; 
                    }
                    
                    ul {
                        margin-top: 0 ; 
                    }
                    
                    div.quote {
                        margin-left: 4%;
                        font-style: italic ; 
                    }
                    
                    a {
                    
                    margin: 0px;
                 padding: 0px;
                 text-transform: unset;
                 text-decoration: none;
                 color: #0c5eb0;
                    
                    }
                    
                    ]]>
                    
                </style>
                
            </head>
            
            <body>
                
                <xsl:element name="img">
                    <xsl:attribute name="src">
                        <xsl:text>https://brill.com/fileasset//fileasset/appbar/logo-brill-300x100-transparent-desktop.png</xsl:text>
                        
                    </xsl:attribute>
                    
                </xsl:element>
                
                       
                <xsl:apply-templates select="front" />         
                <xsl:apply-templates select="body" />     
                <xsl:apply-templates select="back" />     
                
            </body>
        </html>
        
            
      
        
    </xsl:template>
    
    <xsl:template match="front">
        
        <h1>
		<xsl:for-each select="article-meta/title-group">
		<xsl:value-of select="article-title"/>
		</xsl:for-each>
		</h1>
        <p> 
		<xsl:for-each select="article-meta/pub-group">
		<xsl:sort select="pub-date/day"/>
		<xsl:value-of select="day"/>
		<xsl:text>-</xsl:text>
		<xsl:value-of select="month"/>
		<xsl:text>-</xsl:text>
		<xsl:value-of select="year"/>
		</xsl:for-each>
		</p>
        <a>
            <xsl:attribute name="href">
                <xsl:text>https:doi.org/</xsl:text>
                <xsl:value-of select="article-meta/article-id[ @pub-id-type='doi'] "/>
            </xsl:attribute>
            <xsl:value-of select="article-meta/article-id[ @pub-id-type='doi'] "/>
        </a>
        
    
        
        <p>
        
        <div class="metadata">Author(s):</div>
            
		<xsl:for-each select="article-meta/contrib-group/contrib">
		<xsl:value-of select="name/surname"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="name/given-names"/>
        <br/>
		<xsl:value-of select="aff/institution"/>
		<br/>
		<xsl:value-of select="aff/email"/>
		<br/>
		</xsl:for-each>      
      
        </p>
            
   
        
        
        <p><div class="metadata">Journal:</div>
        <xsl:for-each select="journal-meta">
		<xsl:value-of select="journal-title"/>
		</xsl:for-each>
        <br/>
		<xsl:for-each select="article-meta">
		<xsl:text>Volume [</xsl:text>
		<xsl:value-of select="volume"/>
		<xsl:text>],</xsl:text>
		<xsl:text>Issue [</xsl:text>
		<xsl:value-of select="issue"/>
		<xsl:text>]</xsl:text>
		</xsl:for-each>
        <br/>
		
		<xsl:for-each select="journal-meta/issn">
		<xsl:if test="@pub-type='ppub'">
		<xsl:value-of select="@ppub"/>
		</xsl:if>		
		<br/>
		<xsl:if test="@pub-type= 'epub' ">
		<p>
		<xsl:value-of select="@epub"/>
        </p>
		<xsl:value-of select="issn pub-type='epub'"/>
		</xsl:if> 
		</xsl:for-each>
		<br/>
		
		<xsl:for-each select="journal-meta/publisher">
		<xsl:value-of select="publisher-name"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="publisher-loc"/>
		</xsl:for-each>
		<br/>  
     
          
            
        </p>
        
     
        
        
        <p><div class="metadata">Keywords:</div>
            
            <xsl:for-each select="article-meta/kwd-group/kwd">
                <xsl:value-of select="." />
                <xsl:if test="position() != last()">
                    <xsl:text>; </xsl:text>
                        
                </xsl:if>
                
            </xsl:for-each>
        
        </p>
        
  
        
        <p><div class="metadata">Abstract:</div>
            
		<xsl:for-each select="article-meta/abstract">
		<xsl:value-of select="p"/>
		</xsl:for-each>
		
        </p>

       
      
     
        
    </xsl:template>
    
    
    <xsl:template match="body"> 
    
    <h1>Contents</h1>
    
    <ul>
        
        <xsl:for-each select="sec">

 
         <li>
         <a>
             <xsl:attribute name="href">
                 <xsl:text>#</xsl:text>
               <xsl:value-of select="@id"/>
             </xsl:attribute>
             <xsl:if test="label">
             <xsl:value-of select="label"/>
             </xsl:if>
   
   [SECTION TITLE]
   
         </a>
         </li>
     
        </xsl:for-each>
 
    </ul>
        
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="p" >
        <p>
            <xsl:apply-templates />
    </p>
    </xsl:template>
    
    <xsl:template match="sec">
        
        <a>
            <xsl:attribute name="id">
                <xsl:value-of select="@id"/>
            </xsl:attribute>
            
        </a>
        
 
        
        <!-- TEST the section type: IF it has the value 'head1', add an <h1> element -->
        
        <xsl:if test="@sec-type = 'head1' ">
            <h1>
   <xsl:apply-templates select="title"/>
            </h1>
        </xsl:if>
        
        <!-- TEST the section type: IF it has the value 'head2', add an <h2> element -->
        <xsl:if test="@sec-type = 'head2' ">
            <h2>
                <xsl:apply-templates select="title"/>
            </h2>
        </xsl:if>
        
        <xsl:if test="label">
            <p>
            <b>
        <xsl:text>[</xsl:text>
            <xsl:value-of select='label' />
            <xsl:text>]</xsl:text>
            </b>
            </p>
        </xsl:if>
        
        <xsl:apply-templates select="*[ name() != 'title' and name() != 'label']" />
        
    </xsl:template>
    
    <xsl:template match="title">
    <xsl:apply-templates />
    </xsl:template>
    
    <xsl:template match="disp-quote">
        <div class="quote">
            <xsl:apply-templates />
        </div>
        
    </xsl:template>
    
    <xsl:template match="italic">
        <i>
            <xsl:apply-templates />
        </i>
    </xsl:template>
    
    <xsl:template match="sup">
        <sup>
            <a>
                <xsl:attribute name="href">
                    
                    <xsl:text>#</xsl:text>
                    <xsl:text>fn</xsl:text>
                    <xsl:value-of select="."/>
                    
                </xsl:attribute>
             
                <xsl:apply-templates />
            </a>
        
        </sup>
    </xsl:template>
    
    <xsl:template match="back">
        
<h1>Footnotes</h1>
        
        <xsl:for-each select="fn-group/fn">
          <a>
                <xsl:attribute name="id">
                    <xsl:value-of select="@id"/>
                </xsl:attribute>
                
            </a> 
            
<xsl:apply-templates select="p"/>
      
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="verse-group">
        
        <div>
            <xsl:attribute name="style">
                <xsl:text>margin-left: 5%; margin-bottom: 2%;</xsl:text>
            </xsl:attribute>
            
            <xsl:apply-templates></xsl:apply-templates>
        </div>
       
        
    </xsl:template>
    
    <xsl:template match="verse-line">
        <i>
            <xsl:apply-templates/>
            <br/>
        </i>
    
        
    </xsl:template>
    
</xsl:stylesheet>