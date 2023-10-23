<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0" version="1.0">

    <xsl:output method="html"/>

    <xsl:template match="tei:TEI">

<xsl:element name="html">
<xsl:element name="header">
<xsl:element name="style">

  body {font-family:Arial,sans-serif;Georgia;
  font-size:smaller; margin-left: 15%; margin-right: 15%; margin-top: 5%;
background-color: #f2f1ed ; }

    .box{font-family:Georgia;
    font-size:smaller;}
    .boxx	{font-family:Arial,sans-serif;Georgia;
    font-size:90%;
    color:#006; background:white;
    text-align:center;
    padding: 5px 20px 5px 20px;
    border:1px solid gray;
    }/* solid outset inset dotted */

    .red	{color:#C00; font-weight:bold; font-style:italic;}

    a.popup{position:relative;
    z-index:24;
    color:#046;
    text-decoration:underline; }
    a.popup:hover{z-index:12;}
    a.popup span{display: none}
    a.popup:hover span{
    color: white;
    background: #9496a8 ;
    display:block;
    position:absolute;
    padding: 0.7em 1.5em 0.7em 1.5em;
    top:1.5em;
    left:0;
    text-align:center;


</xsl:element>

</xsl:element>

<xsl:element name="body">




            <div xmlns="http://www.w3.org/1999/xhtml">




                     <xsl:element name="h1">
                         <xsl:attribute name="style">
                             <xsl:text>text-align: center; </xsl:text>
                         </xsl:attribute>
                                        <xsl:value-of
                                            select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:biblFull/tei:titleStmt/tei:title"
                                            />
                     </xsl:element>
                                    <hr/>

                                    <xsl:element name="table">

                                        <xsl:attribute name="width">
                                            <xsl:text>100%</xsl:text>
                                        </xsl:attribute>

                                        <xsl:if
                                            test="tei:teiHeader/tei:profileDesc/tei:langUsage/tei:language">
                                            <xsl:element name="tr">
                                                <xsl:element name="td">
                                                    <xsl:attribute name="width">
                                                        <xsl:text>10%</xsl:text>
                                                    </xsl:attribute>
                                                </xsl:element>
                                                <xsl:element name="td">
                                                    <xsl:attribute name="valign">
                                                        <xsl:text>top</xsl:text>
                                                    </xsl:attribute>
                                                    <xsl:attribute name="width">
                                                        <xsl:text>25%</xsl:text>
                                                    </xsl:attribute>
                                                    <xsl:text>Language:</xsl:text>
                                                </xsl:element>
                                                <xsl:element name="td">
                                                    <xsl:value-of
                                                        select="tei:teiHeader/tei:profileDesc/tei:langUsage/tei:language"
                                                        />
                                                </xsl:element>
                                            </xsl:element>
                                        </xsl:if>
                                        <xsl:if
                                            test="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:biblFull/tei:publicationStmt/tei:idno">
                                            <xsl:element name="tr">
                                                <xsl:element name="td">
                                                    <xsl:attribute name="width">
                                                        <xsl:text>10%</xsl:text>
                                                    </xsl:attribute>
                                                </xsl:element>
                                                <xsl:element name="td">
                                                    <xsl:attribute name="valign">
                                                        <xsl:text>top</xsl:text>
                                                    </xsl:attribute>
                                                    <xsl:attribute name="width">
                                                        <xsl:text>25%</xsl:text>
                                                    </xsl:attribute>
                                                    <xsl:text>Source copy consulted:</xsl:text>
                                                </xsl:element>
                                                <xsl:element name="td">


                                                        <xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:biblFull/tei:publicationStmt/tei:idno[ @type = 'callNo'  ]"/>

                                                <!--
                                                </xsl:element> -->


                                                </xsl:element>
                                            </xsl:element>
                                        </xsl:if>
                                        <xsl:element name="tr">
                                            <xsl:element name="td">
                                                <xsl:attribute name="width">
                                                    <xsl:text>10%</xsl:text>
                                                </xsl:attribute>
                                            </xsl:element>
                                            <xsl:element name="td">
                                                <xsl:attribute name="width">
                                                    <xsl:text>25%</xsl:text>
                                                </xsl:attribute>
                                                <xsl:attribute name="valign">
                                                    <xsl:text>top</xsl:text>
                                                </xsl:attribute>
                                                <xsl:text>Abstract:</xsl:text>
                                            </xsl:element>
                                            <xsl:element name="td">
                                                <xsl:apply-templates select="tei:text/tei:front"/>
                                            </xsl:element>
                                        </xsl:element>
                                    </xsl:element>


                                    <xsl:element name="p">
                                        <xsl:element name="br" />
                                    </xsl:element>
<xsl:element name="p">
    <xsl:element name="br" />
</xsl:element>
                              <xsl:apply-templates select="tei:text/tei:body"/>
                            <xsl:if test="//tei:note">
                                <xsl:element name="table">
                                <xsl:element name="tr">
                                    <xsl:element name="td">
                                        <br/>
                                        <br/>
                                        <br/>
                                        <h4>Editorial annotations</h4>
                                        <hr/>
                                        <br/>
                                        <xsl:element name="table">
                                            <xsl:element name="tr">
                                                <xsl:element name="td">
                                                    <xsl:attribute name="width">
                                                        <xsl:text>10%</xsl:text>
                                                    </xsl:attribute>
                                                </xsl:element>
                                                <xsl:element name="td">
                                                    <xsl:call-template name="editorialAnnotations"/>
                                                </xsl:element>
                                            </xsl:element>
                                        </xsl:element>
                                        <xsl:element name="p">
                                            <xsl:element name="br"/>
                                        </xsl:element>
                                    </xsl:element>
                                </xsl:element>
                                </xsl:element>
                            </xsl:if>

                                    <p align="center" class="resp">
                                        <xsl:text>Booktrade Correspondence Project</xsl:text>
                                        <xsl:if
                                            test="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:date">
                                            <xsl:text>, </xsl:text>
                                            <xsl:value-of
                                                select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:date"
                                                />
                                        </xsl:if>
                                    </p>
                                    <p align="center" class="resp">
                                        <xsl:text>Transcribed by </xsl:text>
                                        <xsl:value-of
                                            select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name" />
                                    </p>

                  </div>

                  </xsl:element>

</xsl:element>

        </xsl:template>
        <xsl:template match="tei:front">
            <p>
                <xsl:apply-templates select="tei:div/tei:p"/>
            </p>
        </xsl:template>
    <xsl:template match="tei:body">

        <xsl:choose>

            <xsl:when test="  tei:div[ @type = 'diplomatic' ] and tei:div[ @type = 'critical' ] ">

                <xsl:call-template name="diplomatic-normalised-two-divs"/>
            </xsl:when>
            <!--
            <xsl:when test=" (  tei:div[ @type='diplomatic' ] ) and (  tei:div[ @type='normalised' ] ) ">

                <xsl:call-template name="diplomatic-normalised"/>
            </xsl:when>


            <xsl:when test="//tei:choice">

                <xsl:call-template name="diplomatic-normalised"/>
            </xsl:when>

            -->

            <xsl:otherwise>
                <xsl:call-template name="single-transcription"/>
            </xsl:otherwise>
        </xsl:choose>



    </xsl:template>

    <xsl:template name="diplomatic-normalised-two-divs">

        <xsl:element name="table">
            <xsl:attribute name="width">
                <xsl:text>100%</xsl:text>
            </xsl:attribute>

            <xsl:element name="tr">

                <xsl:element name="td">


                    <br/>
                    <h4>Diplomatic Transcription</h4>
                    <hr/>
                </xsl:element>
                <xsl:element name="td">


                </xsl:element>
                <xsl:element name="td">
                    <br/>
                    <h4>Normalised Transcription</h4>
                    <hr/>

                </xsl:element>

            </xsl:element>

            <xsl:element name="tr">
                <xsl:element name="td">
                    <xsl:attribute name="colspan">
                        <xsl:text>3</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="height">
                        <xsl:text>50</xsl:text>
                    </xsl:attribute>
                </xsl:element>
            </xsl:element>
            <xsl:element name="tr">
                <xsl:element name="td">
                    <xsl:attribute name="width">
                        <xsl:text>45%</xsl:text>
                    </xsl:attribute>

                    <xsl:apply-templates select="tei:div[ @type='diplomatic' ]/tei:opener/tei:address"  mode="diplomatic" />


                    <xsl:apply-templates select="tei:div[ @type='diplomatic' ]/tei:opener/tei:dateline" mode="diplomatic" />

                    <p>
                        <br/>
                    </p>
                    <xsl:apply-templates select="tei:div[ @type='diplomatic' ]/tei:opener/tei:salute" mode="diplomatic" />

                    <p>
                        <br/>
                    </p>
                    <xsl:apply-templates select="tei:div[ @type='diplomatic' ]/tei:p" mode="diplomatic" />

                    <br/>
                    <xsl:apply-templates select="tei:div[ @type='diplomatic' ]/tei:closer" mode="diplomatic" />



                </xsl:element>


                <xsl:element name="td">
                    <xsl:attribute name="width">
                        <xsl:text>10%</xsl:text>
                    </xsl:attribute>

                </xsl:element>

                <xsl:element name="td">
                    <xsl:attribute name="width">
                        <xsl:text>45%</xsl:text>
                    </xsl:attribute>



                    <xsl:apply-templates select="tei:div[ @type='critical' ]/tei:opener/tei:address"  mode="normalised" />


                    <xsl:apply-templates select="tei:div[ @type='critical' ]/tei:opener/tei:dateline" mode="normalised" />

                    <p>
                        <br/>
                    </p>
                    <xsl:apply-templates select="tei:div[ @type='critical' ]/tei:opener/tei:salute" mode="normalised" />

                    <p>
                        <br/>
                    </p>
                    <xsl:apply-templates select="tei:div[ @type='critical' ]/tei:p" mode="normalised" />

                    <br/>
                    <xsl:apply-templates select="tei:div[ @type='critical' ]/tei:closer" mode="normalised" />




                </xsl:element>

            </xsl:element>

        </xsl:element>


    </xsl:template>


    <xsl:template name="diplomatic-normalised">

        <xsl:element name="table">
            <xsl:attribute name="width">
                <xsl:text>100%</xsl:text>
            </xsl:attribute>

            <xsl:element name="tr">

                <xsl:element name="td">


                    <br/>
                    <h4>Diplomatic Transcription</h4>
                    <hr/>
                </xsl:element>
                <xsl:element name="td">


                </xsl:element>
                <xsl:element name="td">
                    <br/>
                    <h4>Normalised Transcription</h4>
                    <hr/>

                </xsl:element>

            </xsl:element>

            <xsl:element name="tr">
                <xsl:element name="td">
                    <xsl:attribute name="colspan">
                        <xsl:text>3</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="height">
                        <xsl:text>50</xsl:text>
                    </xsl:attribute>
                </xsl:element>
            </xsl:element>
            <xsl:element name="tr">
                <xsl:element name="td">
                    <xsl:attribute name="width">
                        <xsl:text>45%</xsl:text>
                    </xsl:attribute>

                    <xsl:apply-templates select="tei:div/tei:opener/tei:address"  mode="diplomatic" />


                    <xsl:apply-templates select="tei:div/tei:opener/tei:dateline" mode="diplomatic" />

                    <p>
                        <br/>
                    </p>
                    <xsl:apply-templates select="tei:div/tei:opener/tei:salute" mode="diplomatic" />

                    <p>
                        <br/>
                    </p>
                    <xsl:apply-templates select="tei:div/tei:p" mode="diplomatic" />

                    <br/>
                    <xsl:apply-templates select="tei:div/tei:closer" mode="diplomatic" />



                </xsl:element>


                <xsl:element name="td">
                    <xsl:attribute name="width">
                        <xsl:text>10%</xsl:text>
                    </xsl:attribute>

                </xsl:element>

                <xsl:element name="td">
                    <xsl:attribute name="width">
                        <xsl:text>45%</xsl:text>
                    </xsl:attribute>



                    <xsl:apply-templates select="tei:div/tei:opener/tei:address"  mode="normalised" />


                    <xsl:apply-templates select="tei:div/tei:opener/tei:dateline" mode="normalised" />

                    <p>
                        <br/>
                    </p>
                    <xsl:apply-templates select="tei:div/tei:opener/tei:salute" mode="normalised" />

                    <p>
                        <br/>
                    </p>
                    <xsl:apply-templates select="tei:div/tei:p" mode="normalised" />

                    <br/>
                    <xsl:apply-templates select="tei:div/tei:closer" mode="normalised" />




                </xsl:element>

            </xsl:element>

        </xsl:element>


    </xsl:template>

    <xsl:template name="single-transcription">

        <xsl:element name="table">
            <xsl:attribute name="width">
                <xsl:text>100%</xsl:text>
            </xsl:attribute>


        <xsl:element name="tr">

            <xsl:element name="td">

                <xsl:attribute name="width">
                    <xsl:text>20%</xsl:text>
                </xsl:attribute>


            </xsl:element>

            <xsl:element name="td">

                <xsl:attribute name="width">
                    <xsl:text>60%</xsl:text>
                </xsl:attribute>


                <xsl:apply-templates select="tei:div/tei:opener/tei:address"  mode="diplomatic" />


                <xsl:apply-templates select="tei:div/tei:opener/tei:dateline" mode="diplomatic" />

                <p>
                    <br/>
                </p>
                <xsl:apply-templates select="tei:div/tei:opener/tei:salute" mode="diplomatic" />

                <p>
                    <br/>
                </p>
                <xsl:apply-templates select="tei:div/tei:p" mode="diplomatic" />

                <br/>
                <xsl:apply-templates select="tei:div/tei:closer" mode="diplomatic" />


            </xsl:element>


            <xsl:element name="td">

                <xsl:attribute name="width">
                    <xsl:text>20%</xsl:text>
                </xsl:attribute>


            </xsl:element>



        </xsl:element>


        </xsl:element>


    </xsl:template>




    <xsl:template match="tei:opener/tei:address" mode="diplomatic">



            <p align="right">
                <xsl:for-each select="tei:addrLine">
                    <xsl:apply-templates mode="diplomatic" />
                    <xsl:if test="position() != last()">
                        <xsl:element name="br"/>
                    </xsl:if>
                </xsl:for-each>
            </p>
    </xsl:template>



    <xsl:template match="tei:opener/tei:salute"  mode="diplomatic">
            <p align="left">
                <xsl:apply-templates mode="diplomatic"/>
            </p>
        </xsl:template>
    <xsl:template match="tei:closer/tei:salute"  mode="diplomatic">

                <xsl:apply-templates mode="diplomatic"/>
            <xsl:if test="position() != last()">
                <xsl:element name="br"/>
            </xsl:if>

        </xsl:template>
    <xsl:template match="tei:closer/tei:signed"  mode="diplomatic">
            <p align="center">
                <xsl:apply-templates mode="diplomatic"/>
            </p>
        </xsl:template>









    <xsl:template match="tei:choice//tei:lb"  mode="diplomatic">
            <xsl:text>#</xsl:text>
            <xsl:value-of select="name()"/>
            <xsl:text>#</xsl:text>
        </xsl:template>
    <xsl:template match="tei:lb"  mode="diplomatic">
            <br/>
        </xsl:template>
    <xsl:template match="tei:gap"  mode="diplomatic">
            <xsl:text> [...] </xsl:text>
        </xsl:template>
    <xsl:template match="tei:pb"  mode="diplomatic">
            <br/>
            <br/>
            <xsl:text>***</xsl:text>
            <br/>
            <br/>
        </xsl:template>
    <xsl:template match="tei:hi[ @rend = 'underlined' ]"  mode="diplomatic">
     <u><xsl:apply-templates/></u>
    </xsl:template>
    <xsl:template match="tei:hi[ @rend = 'superscript' ]"  mode="diplomatic">
        <span style="font-size:9px; vertical-align:top; "><xsl:apply-templates/></span>
    </xsl:template>

    <xsl:template match="tei:supplied"  mode="diplomatic">
            <xsl:text>{</xsl:text>
            <xsl:apply-templates/>
            <xsl:text>}</xsl:text>
        </xsl:template>
    <xsl:template name="editorialAnnotations" >
            <xsl:element name="table">
                <xsl:for-each select="//tei:text//tei:note">
                    <xsl:element name="tr">
                        <xsl:element name="td">
                            <xsl:attribute name="valign">
                                <xsl:text>top</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="width">
                                <xsl:text>3%</xsl:text>
                            </xsl:attribute>
                            <xsl:element name="a">
                                <xsl:attribute name="name">
                                    <xsl:text>n</xsl:text>
                                    <xsl:value-of
                                        select="count(preceding::tei:note[normalize-space()])+1"/>
                                </xsl:attribute>
                            </xsl:element>
                            <xsl:value-of
                                select="concat(count(preceding::tei:note[normalize-space()])+1, '. ') "
                                />
                        </xsl:element>
                        <xsl:element name="td">
                            <xsl:if test="@type='translation' ">
                                <xsl:text>Translation: </xsl:text>
                            </xsl:if>
                            <xsl:apply-templates />
                        </xsl:element>
                    </xsl:element>
                </xsl:for-each>
            </xsl:element>
    </xsl:template>





    <xsl:template match="tei:opener/tei:address" mode="normalised">
        <p align="right">
            <xsl:for-each select="tei:addrLine">
                <xsl:apply-templates mode="normalised"/>
                <xsl:if test="position() != last()">
                    <xsl:element name="br"/>
                </xsl:if>
            </xsl:for-each>
        </p>
    </xsl:template>



    <xsl:template match="tei:opener/tei:salute"  mode="normalised">
        <p align="left">
            <xsl:apply-templates mode="normalised"/>
        </p>
    </xsl:template>
    <xsl:template match="tei:closer/tei:salute"  mode="normalised">

        <xsl:apply-templates mode="normalised"/>
        <xsl:if test="position() != last()">
            <xsl:element name="br"/>
        </xsl:if>

    </xsl:template>
    <xsl:template match="tei:closer/tei:signed"  mode="normalised">
        <p align="center">
            <xsl:apply-templates mode="normalised"/>
        </p>
    </xsl:template>
    <xsl:template match="tei:body//tei:p"  mode="normalised">
        <p>
            <xsl:apply-templates mode="normalised"/>
        </p>
    </xsl:template>

    <xsl:template match="tei:body//tei:p"  mode="diplomatic">
        <p>
            <xsl:apply-templates mode="diplomatic"/>
        </p>
    </xsl:template>

    <xsl:template match="tei:opener/tei:dateline"  mode="normalised">
        <p align="left">
            <xsl:if test="string-length ( normalize-space ( tei:placeName/text() ) ) > 0 ">
                <xsl:apply-templates select="tei:placeName" mode="normalised"/>
                <xsl:text>, </xsl:text>
            </xsl:if>
            <xsl:apply-templates select="tei:date" mode="normalised"/>
        </p>
    </xsl:template>

    <xsl:template match="tei:opener/tei:dateline"  mode="diplomatic">
        <p align="left">
            <xsl:if test="string-length ( normalize-space ( tei:placeName/text() ) ) > 0 ">
                <xsl:apply-templates select="tei:placeName" mode="normalised"/>
                <xsl:text>, </xsl:text>
            </xsl:if>
            <xsl:apply-templates select="tei:date" mode="diplomatic"/>
        </p>
    </xsl:template>

    <xsl:template match="tei:note" mode="normalised">
        <xsl:variable name="href">
            <xsl:value-of select="count(preceding::tei:note[normalize-space()])+1"/>
        </xsl:variable>
        <a class="footnote">
            <xsl:attribute name="href">
                <xsl:value-of select="concat('#n', $href )"/>
            </xsl:attribute>
            <xsl:text>[</xsl:text>
            <xsl:value-of select="$href"/>
            <xsl:text>]</xsl:text>
        </a>
    </xsl:template>

    <xsl:template match="tei:note" mode="diplomatic">
        <xsl:variable name="href">
            <xsl:value-of select="count(preceding::tei:note[normalize-space()])+1"/>
        </xsl:variable>
        <a class="footnote">
            <xsl:attribute name="href">
                <xsl:value-of select="concat('#n', $href )"/>
            </xsl:attribute>
            <xsl:text>[</xsl:text>
            <xsl:value-of select="$href"/>
            <xsl:text>]</xsl:text>
        </a>
    </xsl:template>



    <xsl:template match="tei:choice//tei:lb"  mode="normalised">
        <xsl:text>#</xsl:text>
        <xsl:value-of select="name()"/>
        <xsl:text>#</xsl:text>
    </xsl:template>
    <xsl:template match="tei:lb"  mode="normalised">
        <br/>
    </xsl:template>
    <xsl:template match="tei:gap"  mode="normalised">
        <xsl:text> [...] </xsl:text>
    </xsl:template>
    <xsl:template match="tei:pb"  mode="normalised">
        <br/>
        <br/>
        <xsl:text>***</xsl:text>
        <br/>
        <br/>
    </xsl:template>
    <xsl:template match="tei:hi[ @rend = 'underlined' ]"  mode="normalised">
        <u><xsl:apply-templates/></u>
    </xsl:template>


    <xsl:template match="tei:del" mode="normalised">
        <xsl:element name="span">
            <xsl:attribute name="style">
                <xsl:text>text-decoration: line-through; </xsl:text>
            </xsl:attribute>
            <xsl:apply-templates mode="normalised"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:del" mode="diplomatic">
        <xsl:element name="span">
            <xsl:attribute name="style">
                <xsl:text>text-decoration: line-through; </xsl:text>
            </xsl:attribute>
            <xsl:apply-templates mode="diplomatic"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:hi[ @rend = 'superscript' ]"  mode="normalised">
        <span style="font-size:9px; vertical-align:top; "><xsl:apply-templates/></span>
    </xsl:template>

    <xsl:template match="tei:hi[ @rend = 'superscript' ]"  mode="diplomatic">
        <span style="font-size:9px; vertical-align:top; "><xsl:apply-templates/></span>
    </xsl:template>

    <xsl:template match="tei:choice" mode="normalised">
        <xsl:variable name="count">
            <xsl:value-of select="count( current()//tei:lb)"/>
        </xsl:variable>
        <xsl:variable name="text">

            <xsl:apply-templates select="*[ name() = 'reg' or  name() = 'corr'  or name() = 'expan'  ]"/>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="$count = 0">

                <xsl:choose>
                    <xsl:when test="tei:reg">
                        <xsl:element name="a">
                            <xsl:attribute name="href">
                                <xsl:text>#</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="tei:orig"/>
                            </xsl:attribute>
                            <xsl:attribute name="class">
                                <xsl:text>popup</xsl:text>
                            </xsl:attribute>


                            <xsl:apply-templates select="tei:reg" mode="normalised"/>

                            <xsl:element name="span">

                                <xsl:text>Original: </xsl:text>
                                <xsl:value-of select="tei:orig"/>

                            </xsl:element>

                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="tei:expan">
                        <xsl:element name="a">
                            <xsl:attribute name="href">
                                <xsl:text>#</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="class">
                                <xsl:text>popup</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="tei:abbr"/>
                            </xsl:attribute>
                            <xsl:element name="span">
                                <xsl:text>popup( '</xsl:text>

                                <xsl:text>Original: </xsl:text>
                                <xsl:value-of select="tei:abbr"/>
                                <xsl:text>' )</xsl:text>
                            </xsl:element>

                            <xsl:apply-templates select="tei:expan" mode="normalised"/>
                        </xsl:element>

                    </xsl:when>
                    <xsl:when test="tei:corr">
                        <xsl:element name="a">
                            <xsl:attribute name="href">
                                <xsl:text>javascript:void(0);</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="tei:sic"/>
                            </xsl:attribute>
                            <xsl:attribute name="class">
                                <xsl:text>popup</xsl:text>
                            </xsl:attribute>
                            <xsl:element name="span">
                                <xsl:text>popup( '</xsl:text>
                                <xsl:text>Original: </xsl:text>
                                <xsl:value-of select="tei:sic"/>
                                <xsl:text>' )</xsl:text>
                            </xsl:element>

                            <xsl:apply-templates select="tei:corr" mode="normalised"/>
                        </xsl:element>

                    </xsl:when>
                </xsl:choose>

            </xsl:when>
            <xsl:when test="$count = 1">
                <xsl:call-template name="popup">
                    <xsl:with-param name="text">
                        <xsl:value-of select="substring-before( $text , '#lb#'  ) "/>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:element name="br"/>

                <xsl:call-template name="popup">
                    <xsl:with-param name="text">
                        <xsl:value-of select="substring-after( $text , '#lb#'  ) "/>
                    </xsl:with-param>
                </xsl:call-template>
            </xsl:when>

            <xsl:when test="$count = 2">
                <xsl:call-template name="popup">
                    <xsl:with-param name="text">
                        <xsl:value-of select="substring-before( $text , '#lb#'  ) "/>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:element name="br"/>

                <xsl:call-template name="popup">
                    <xsl:with-param name="text">
                        <xsl:value-of select="substring-before( substring-after ( $text , '#lb#'  ) , '#lb#' )"/>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:element name="br"/>

                <xsl:call-template name="popup">
                    <xsl:with-param name="text">
                        <xsl:value-of select="substring-after( substring-after ( $text , '#lb#'  ) , '#lb#' )"/>
                    </xsl:with-param>
                </xsl:call-template>

            </xsl:when>

            <xsl:when test="$count = 3">
                <xsl:call-template name="popup">
                    <xsl:with-param name="text">
                        <xsl:value-of select="substring-before( $text , '#lb#'  ) "/>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:element name="br"/>

                <xsl:call-template name="popup">
                    <xsl:with-param name="text">
                        <xsl:value-of select="substring-after( substring-after ( substring-after ( $text , '#lb#'  ) , '#lb#' ) , '#lb#' )"/>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:element name="br"/>

                <xsl:call-template name="popup">
                    <xsl:with-param name="text">
                        <xsl:value-of select="substring-before( substring-after ( substring-after ( $text , '#lb#'  ) , '#lb#' ), '#lb#')"/>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:element name="br"/>

                <xsl:call-template name="popup">
                    <xsl:with-param name="text">
                        <xsl:value-of select="substring-after( substring-after ( substring-after ( $text , '#lb#'  ) , '#lb#' ), '#lb#')"/>
                    </xsl:with-param>
                </xsl:call-template>


            </xsl:when>
        </xsl:choose>
    </xsl:template>


    <xsl:template match="tei:choice" mode="diplomatic">
        <xsl:variable name="count">
            <xsl:value-of select="count( current()//tei:lb)"/>
        </xsl:variable>
        <xsl:variable name="text">
            <xsl:apply-templates select="*[ name() = 'orig' or  name() = 'sic'  or name() = 'abbr'  ]"/>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="$count = 0">

                <xsl:choose>
                    <xsl:when test="tei:orig">
                        <xsl:element name="a">
                            <xsl:attribute name="href">
                                <xsl:text>#</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="class">
                                <xsl:text>popup</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="tei:reg"/>
                            </xsl:attribute>
                            <xsl:element name="span">

                                <xsl:value-of select="tei:reg"/>

                            </xsl:element>

                            <xsl:apply-templates select="tei:orig" mode="diplomatic"/>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="tei:abbr">
                        <xsl:element name="a">
                            <xsl:attribute name="href">
                                <xsl:text>#</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="tei:expan"/>
                            </xsl:attribute>
                            <xsl:attribute name="class">
                                <xsl:text>popup</xsl:text>
                            </xsl:attribute>
                            <xsl:element name="span">

                                <xsl:value-of select="tei:expan"/>

                            </xsl:element>

                            <xsl:apply-templates select="tei:abbr" mode="diplomatic"/>
                        </xsl:element>

                    </xsl:when>
                    <xsl:when test="tei:sic">
                        <xsl:element name="a">
                            <xsl:attribute name="href">
                                <xsl:text>#</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="tei:corr"/>
                            </xsl:attribute>
                            <xsl:attribute name="class">
                                <xsl:text>popup</xsl:text>
                            </xsl:attribute>
                            <xsl:element name="span">

                                <xsl:value-of select="tei:corr"/>

                            </xsl:element>

                            <xsl:apply-templates select="tei:sic" mode="diplomatic"/>
                        </xsl:element>

                    </xsl:when>
                </xsl:choose>

            </xsl:when>
            <xsl:when test="$count = 1">
                <xsl:call-template name="popup">
                    <xsl:with-param name="text">
                        <xsl:value-of select="substring-before( $text , '#lb#'  ) "/>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:element name="br"/>

                <xsl:call-template name="popup">
                    <xsl:with-param name="text">
                        <xsl:value-of select="substring-after( $text , '#lb#'  ) "/>
                    </xsl:with-param>
                </xsl:call-template>
            </xsl:when>

            <xsl:when test="$count = 2">
                <xsl:call-template name="popup">
                    <xsl:with-param name="text">
                        <xsl:value-of select="substring-before( $text , '#lb#'  ) "/>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:element name="br"/>

                <xsl:call-template name="popup">
                    <xsl:with-param name="text">
                        <xsl:value-of select="substring-before( substring-after ( $text , '#lb#'  ) , '#lb#' )"/>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:element name="br"/>

                <xsl:call-template name="popup">
                    <xsl:with-param name="text">
                        <xsl:value-of select="substring-after( substring-after ( $text , '#lb#'  ) , '#lb#' )"/>
                    </xsl:with-param>
                </xsl:call-template>

            </xsl:when>

            <xsl:when test="$count = 3">
                <xsl:call-template name="popup">
                    <xsl:with-param name="text">
                        <xsl:value-of select="substring-before( $text , '#lb#'  ) "/>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:element name="br"/>

                <xsl:call-template name="popup">
                    <xsl:with-param name="text">
                        <xsl:value-of select="substring-after( substring-after ( substring-after ( $text , '#lb#'  ) , '#lb#' ) , '#lb#' )"/>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:element name="br"/>

                <xsl:call-template name="popup">
                    <xsl:with-param name="text">
                        <xsl:value-of select="substring-before( substring-after ( substring-after ( $text , '#lb#'  ) , '#lb#' ), '#lb#')"/>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:element name="br"/>

                <xsl:call-template name="popup">
                    <xsl:with-param name="text">
                        <xsl:value-of select="substring-after( substring-after ( substring-after ( $text , '#lb#'  ) , '#lb#' ), '#lb#')"/>
                    </xsl:with-param>
                </xsl:call-template>


            </xsl:when>
        </xsl:choose>
    </xsl:template>


    <xsl:template match="tei:choice//tei:lb">
        <xsl:text>#</xsl:text>
        <xsl:value-of select="name()"/>
        <xsl:text>#</xsl:text>
    </xsl:template>

    <xsl:template name="popup">
        <xsl:param name="text"/>

        <xsl:element name="a">
            <xsl:attribute name="href">
                <xsl:text>javascript:void(0);</xsl:text>
            </xsl:attribute>

            <xsl:attribute name="onMouseOver">
                <xsl:text>popup( '</xsl:text>
                <xsl:choose>
                    <xsl:when test="tei:reg">
                        <xsl:apply-templates select="tei:reg"/>
                    </xsl:when>
                    <xsl:when test="tei:expan">
                        <xsl:apply-templates select="tei:expan"/>
                    </xsl:when>
                    <xsl:when test="tei:corr">
                        <xsl:apply-templates select="tei:corr"/>
                    </xsl:when>
                </xsl:choose>
                <xsl:text>' )</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="onMouseOut">
                <xsl:text>remove_popup()</xsl:text>
            </xsl:attribute>
            <xsl:value-of select="$text"/>
        </xsl:element>
    </xsl:template>


    <xsl:template match="tei:title"  mode="normalised">
        <xsl:element name="i">
            <xsl:apply-templates mode="normalised"/>
        </xsl:element>
    </xsl:template>


    <xsl:template match="tei:title"  mode="diplomatic">
        <xsl:element name="i">
            <xsl:apply-templates mode="diplomatic"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:supplied"  mode="normalised">
        <xsl:text>{</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>}</xsl:text>
    </xsl:template>


    <xsl:template match="tei:table" mode="diplomatic">
     <xsl:element name="table">
         <xsl:apply-templates select="tei:row" />
     </xsl:element>
    </xsl:template>


    <xsl:template match="tei:row" >
        <xsl:element name="tr">
            <xsl:apply-templates select="tei:cell" />
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:cell" >
        <xsl:element name="td">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    </xsl:stylesheet>
