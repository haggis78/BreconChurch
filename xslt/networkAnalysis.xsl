<?xml version="1.0" encoding="UTF-8"?>
<!-- AMA: The purpose of this XSLT is to output the an svg page that shows the variances between all editions page. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">

    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
    <xsl:variable name="currentAB" as="node()+" select="descendant::ab"/>
    <xsl:template match="/">
        <xsl:for-each select="$currentAB">
            <xsl:result-document method="xhtml" indent="yes" href="../site/html/analysis/ab{position()}-an.html">
                <html xmlns="http://www.w3.org/1999/xhtml">
                    <head>
                        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                        <link rel="stylesheet" type="text/css" href="../../css/brecon.css" />
                        <link rel="icon" href="../../img/background/brecon-favicon.png" />
                        <script src="../../javascript/comp-checkbox.js" type="text/javascript"></script>
                        <title>Brecon | Comparison</title>
                    </head>
                    <body>
                        <!-- SSI line below -->
                        <!--#include virtual="ssi/netwrok-ssi.html"-->
                        <div class="content">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 1000">
                                <g class="lines">
                                    <line x1="500" y1="50" x2="675" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'D')]] => count()}">
                                        <title>
                                            <xsl:text>C to D: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'D')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
\                                    </line>
                                    <line x1="500" y1="50" x2="750" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'I')]] => count()}">
                                        <title>
                                            <xsl:text>C to I: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'I')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                        
                                    </line>
                                    <line x1="500" y1="50" x2="675" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'J')]] => count()}">
                                        <title>
                                            <xsl:text>C to J: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'J')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="500" y1="50" x2="500" y2="550" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'O')]] => count()}">
                                        <title>
                                            <xsl:text>C to O: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'O')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="500" y1="50" x2="325" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'R')]] => count()}">
                                        <title>
                                            <xsl:text>C to R: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'R')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="500" y1="50" x2="250" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'S')]] => count()}">
                                        <title>
                                            <xsl:text>C to S: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'S')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="500" y1="50" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'W')]] => count()}">
                                        <title>
                                            <xsl:text>C to W: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'W')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="675" y1="125" x2="750" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'D')][contains(., 'I')]] => count()}">
                                        <title>
                                            <xsl:text>D to I: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'I')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="675" y1="125" x2="675" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'D')][contains(., 'J')]] => count()}">
                                        <title>
                                            <xsl:text>D to J: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'J')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="675" y1="125" x2="500" y2="550" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'D')][contains(., 'O')]] => count()}">
                                        <title>
                                            <xsl:text>D to O: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'O')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="675" y1="125" x2="325" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'D')][contains(., 'R')]] => count()}">
                                        <title>
                                            <xsl:text>D to R: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'R')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="675" y1="125" x2="250" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'D')][contains(., 'S')]] => count()}">
                                        <title>
                                            <xsl:text>D to S: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'S')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="675" y1="125" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'D')][contains(., 'W')]] => count()}">
                                        <title>
                                            <xsl:text>D to W: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'W')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="750" y1="300" x2="675" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'I')][contains(., 'J')]] => count()}">
                                        <title>
                                            <xsl:text>I to J: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'J')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="750" y1="300" x2="500" y2="550" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'I')][contains(., 'O')]] => count()}">
                                        <title>
                                            <xsl:text>I to O: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'O')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="750" y1="300" x2="325" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'I')][contains(., 'R')]] => count()}">
                                        <title>I t R</title>
                                    </line>
                                    <line x1="750" y1="300" x2="250" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'I')][contains(., 'S')]] => count()}">
                                        <title>
                                            <xsl:text>I to S: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'S')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="750" y1="300" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'I')][contains(., 'W')]] => count()}">
                                        <title>
                                            <xsl:text>I to W: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'W')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="675" y1="475" x2="500" y2="550" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'J')][contains(., 'O')]] => count()}">
                                        <title>
                                            <xsl:text>J to O: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'O')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="675" y1="475" x2="325" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'J')][contains(., 'R')]] => count()}">
                                        <title>
                                            <xsl:text>J to R: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'R')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="675" y1="475" x2="250" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'J')][contains(., 'S')]] => count()}">
                                        <title>
                                            <xsl:text>J to S: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'S')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="675" y1="475" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'J')][contains(., 'W')]] => count()}">
                                        <title>
                                            <xsl:text>J to W: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'W')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="500" y1="550" x2="325" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'O')][contains(., 'R')]] => count()}">
                                        <title>
                                            <xsl:text>O to R: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'R')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="500" y1="550" x2="250" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'O')][contains(., 'S')]] => count()}">
                                        <title>
                                            <xsl:text>O to S: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'S')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="500" y1="550" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'O')][contains(., 'W')]] => count()}">
                                        <title>
                                            <xsl:text>O to W: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'W')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="325" y1="475" x2="250" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'R')][contains(., 'S')]] => count()}">
                                        <title>
                                            <xsl:text>R to S: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'S')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="325" y1="475" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'R')][contains(., 'W')]] => count()}">
                                        <title>
                                            <xsl:text>R to W: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'W')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                    <line x1="250" y1="300" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'S')][contains(., 'W')]] => count()}">
                                        <title>
                                            <xsl:text>S to W: </xsl:text>
                                            <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')][contains(., 'W')]] => count()"/>
                                            <xsl:text> ABs in common</xsl:text>
                                        </title>
                                    </line>
                                </g>
                                <g class="circles">
                                    <g class="c-edition">
                                        <rect x="490" y="35" width="20" height="20" fill="black"/>
                                        <circle r="{((.[position()]//rdg[@wit[contains(., 'C')]] => count() - .[position()]//rdg[@wit[contains(., 'C')]][not(descendant::text())] =>count()) * 5)}" cx="500" cy="45" stroke="#ff3ad4" fill="#ff3ad4"/>
                                        <text x="500" y="50" fill="white" text-anchor="middle">C</text>
                                    </g>
                                    <g class="d-edition">
                                        <rect x="665" y="110" width="20" height="20" fill="black"/>
                                        <circle r="{((.[position()]//rdg[@wit[contains(., 'D')]] => count() - .[position()]//rdg[@wit[contains(., 'D')]][not(descendant::text())] =>count()) * 5)}" cx="675" cy="120" stroke="#ff3f3a" fill="#ff3f3a"/>
                                        <text x="675" y="125" fill="white" text-anchor="middle">D</text>
                                    </g>
                                    <g class="i-edition">
                                        <rect x="740" y="285" width="20" height="20" fill="black"/>
                                        <circle r="{((.[position()]//rdg[@wit[contains(., 'I')]] => count() - .[position()]//rdg[@wit[contains(., 'I')]][not(descendant::text())] =>count()) * 5)}" cx="750" cy="295" stroke="#ffac3a" fill="#ffac3a"/>
                                        <text x="750" y="300" fill="white" text-anchor="middle">I</text>
                                    </g>
                                    <g class="j-edition">
                                        <rect x="665" y="460" width="20" height="20" fill="black"/>
                                        <circle r="{((.[position()]//rdg[@wit[contains(., 'J')]] => count() - .[position()]//rdg[@wit[contains(., 'J')]][not(descendant::text())] =>count()) * 5)}" cx="675" cy="470" stroke="#ffe83a" fill="#ffe83a"/>
                                        <text x="675" y="475" fill="white" text-anchor="middle">J</text>
                                    </g>
                                    <g class="o-edition">
                                        <rect x="490" y="535" width="20" height="20" fill="black"/>
                                        <circle r="{((.[position()]//rdg[@wit[contains(., 'O')]] => count() - .[position()]//rdg[@wit[contains(., 'O')]][not(descendant::text())] =>count()) * 5)}" cx="500" cy="545" stroke="#3aff47" fill="#3aff47"/>
                                        <text x="500" y="550" fill="white" text-anchor="middle">O</text>
                                    </g>
                                    <g class="r-edition">
                                        <rect x="315" y="460" width="20" height="20" fill="black"/>
                                        <circle r="{((.[position()]//rdg[@wit[contains(., 'R')]] => count() - .[position()]//rdg[@wit[contains(., 'R')]][not(descendant::text())] =>count()) * 5)}" cx="325" cy="470" stroke="#48acff" fill="#48acff"/>
                                        <text x="325" y="475" fill="white" text-anchor="middle">R</text>
                                    </g>
                                    <g class="s-edition">
                                        <rect x="240" y="285" width="20" height="20" fill="black"/>
                                        <circle r="{((.[position()]//rdg[@wit[contains(., 'S')]] => count() - .[position()]//rdg[@wit[contains(., 'S')]][not(descendant::text())] =>count()) * 5)}" cx="250" cy="295" stroke="#6636ff" fill="#6636ff"/>
                                        <text x="250" y="300" fill="white" text-anchor="middle">S</text>
                                    </g>
                                    <g class="w-edition">
                                        <rect x="315" y="110" width="20" height="20" fill="black"/>
                                        <circle r="{((.[position()]//rdg[@wit[contains(., 'W')]] => count() - .[position()]//rdg[@wit[contains(., 'W')]][not(descendant::text())] =>count()) * 5)}" cx="325" cy="120" stroke="#a848ff" fill="#a848ff"/>
                                        <text x="325" y="125" fill="white" text-anchor="middle">W</text>
                                    </g>
                                </g>
                            </svg>
                        </div>
                    </body>
                </html>
<!--                <xsl:text>AB </xsl:text><xsl:value-of select="position()"/><xsl:text>&#10;</xsl:text>
                <xsl:text>C </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#C'] => count()"/><xsl:text> D </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>C </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#C'] => count()"/><xsl:text> I </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>C </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#C'] => count()"/><xsl:text> J </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>C </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#C'] => count()"/><xsl:text> O </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>C </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#C'] => count()"/><xsl:text> R </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>C </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#C'] => count()"/><xsl:text> S </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>C </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#C'] => count()"/><xsl:text> W </xsl:text><xsl:text>&#10;</xsl:text>
                
                <xsl:text>D </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#D'] => count()"/><xsl:text> C </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>D </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#D'] => count()"/><xsl:text> I </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>D </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#D'] => count()"/><xsl:text> J </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>D </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#D'] => count()"/><xsl:text> O </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>D </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#D'] => count()"/><xsl:text> R </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>D </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#D'] => count()"/><xsl:text> S </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>D </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#D'] => count()"/><xsl:text> W </xsl:text><xsl:text>&#10;</xsl:text>
                
                <xsl:text>I </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#I'] => count()"/><xsl:text> C </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>I </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#I'] => count()"/><xsl:text> D </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>I </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#I'] => count()"/><xsl:text> J </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>I </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#I'] => count()"/><xsl:text> O </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>I </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#I'] => count()"/><xsl:text> R </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>I </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#I'] => count()"/><xsl:text> S </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>I </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#I'] => count()"/><xsl:text> W </xsl:text><xsl:text>&#10;</xsl:text>
                
                <xsl:text>J </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#J'] => count()"/><xsl:text> C </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>J </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#J'] => count()"/><xsl:text> D </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>J </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#J'] => count()"/><xsl:text> I </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>J </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#J'] => count()"/><xsl:text> O </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>J </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#J'] => count()"/><xsl:text> R </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>J </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#J'] => count()"/><xsl:text> S </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>J </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#J'] => count()"/><xsl:text> W </xsl:text><xsl:text>&#10;</xsl:text>
                
                <xsl:text>O </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#O'] => count()"/><xsl:text> C </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>O </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#O'] => count()"/><xsl:text> D </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>O </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#O'] => count()"/><xsl:text> I </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>O </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#O'] => count()"/><xsl:text> J </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>O </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#O'] => count()"/><xsl:text> R </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>O </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#O'] => count()"/><xsl:text> S </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>O </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#O'] => count()"/><xsl:text> W </xsl:text><xsl:text>&#10;</xsl:text>
                
                <xsl:text>R </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#R'] => count()"/><xsl:text> C </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>R </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#R'] => count()"/><xsl:text> D </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>R </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#R'] => count()"/><xsl:text> I </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>R </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#R'] => count()"/><xsl:text> J </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>R </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#R'] => count()"/><xsl:text> O </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>R </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#R'] => count()"/><xsl:text> S </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>R </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#R'] => count()"/><xsl:text> W </xsl:text><xsl:text>&#10;</xsl:text>
                
                <xsl:text>S </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#S'] => count()"/><xsl:text> C </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>S </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#S'] => count()"/><xsl:text> D </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>S </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#S'] => count()"/><xsl:text> I </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>S </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#S'] => count()"/><xsl:text> J </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>S </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#S'] => count()"/><xsl:text> O </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>S </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#S'] => count()"/><xsl:text> R </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>S </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#S'] => count()"/><xsl:text> W </xsl:text><xsl:text>&#10;</xsl:text>
                
                <xsl:text>W </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#W'] => count()"/><xsl:text> C </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>W </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#W'] => count()"/><xsl:text> D </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>W </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#W'] => count()"/><xsl:text> I </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>W </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#W'] => count()"/><xsl:text> J </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>W </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#W'] => count()"/><xsl:text> O </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>W </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#W'] => count()"/><xsl:text> R </xsl:text><xsl:text>&#10;</xsl:text>
                <xsl:text>W </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".[position()]//rdg[@wit='#W'] => count()"/><xsl:text> S </xsl:text><xsl:text>&#10;</xsl:text>
                
                <xsl:text>&#10;</xsl:text>-->
            </xsl:result-document>
        </xsl:for-each>
        <xsl:result-document  method="text" indent="yes" href="../analysis/overall-analysis-table.txt">
            <xsl:text>Editions Overall</xsl:text><xsl:text>&#10;</xsl:text>
            <xsl:text>C </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')]] => count() - .//rdg[@wit[contains(., 'C')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#C'] => count()"/><xsl:text> D </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')][contains(., 'D')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>C </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')]] => count() - .//rdg[@wit[contains(., 'C')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#C'] => count()"/><xsl:text> I </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')][contains(., 'I')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>C </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')]] => count() - .//rdg[@wit[contains(., 'C')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#C'] => count()"/><xsl:text> J </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')][contains(., 'J')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>C </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')]] => count() - .//rdg[@wit[contains(., 'C')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#C'] => count()"/><xsl:text> O </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')][contains(., 'O')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>C </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')]] => count() - .//rdg[@wit[contains(., 'C')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#C'] => count()"/><xsl:text> R </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')][contains(., 'R')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>C </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')]] => count() - .//rdg[@wit[contains(., 'C')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#C'] => count()"/><xsl:text> S </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')][contains(., 'S')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>C </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')]] => count() - .//rdg[@wit[contains(., 'C')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#C'] => count()"/><xsl:text> W </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'C')][contains(., 'W')]] => count()"/><xsl:text>&#10;</xsl:text>
            
            <xsl:text>D </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')]] => count() - .//rdg[@wit[contains(., 'D')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#D'] => count()"/><xsl:text> C </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')][contains(., 'C')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>D </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')]] => count() - .//rdg[@wit[contains(., 'D')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#D'] => count()"/><xsl:text> I </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')][contains(., 'I')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>D </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')]] => count() - .//rdg[@wit[contains(., 'D')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#D'] => count()"/><xsl:text> J </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')][contains(., 'J')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>D </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')]] => count() - .//rdg[@wit[contains(., 'D')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#D'] => count()"/><xsl:text> O </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')][contains(., 'O')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>D </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')]] => count() - .//rdg[@wit[contains(., 'D')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#D'] => count()"/><xsl:text> R </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')][contains(., 'R')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>D </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')]] => count() - .//rdg[@wit[contains(., 'D')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#D'] => count()"/><xsl:text> S </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')][contains(., 'S')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>D </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')]] => count() - .//rdg[@wit[contains(., 'D')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#D'] => count()"/><xsl:text> W </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'D')][contains(., 'W')]] => count()"/><xsl:text>&#10;</xsl:text>
            
            <xsl:text>I </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')]] => count() - .//rdg[@wit[contains(., 'I')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#I'] => count()"/><xsl:text> C </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')][contains(., 'C')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>I </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')]] => count() - .//rdg[@wit[contains(., 'I')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#I'] => count()"/><xsl:text> D </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')][contains(., 'D')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>I </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')]] => count() - .//rdg[@wit[contains(., 'I')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#I'] => count()"/><xsl:text> J </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')][contains(., 'J')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>I </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')]] => count() - .//rdg[@wit[contains(., 'I')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#I'] => count()"/><xsl:text> O </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')][contains(., 'O')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>I </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')]] => count() - .//rdg[@wit[contains(., 'I')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#I'] => count()"/><xsl:text> R </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')][contains(., 'R')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>I </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')]] => count() - .//rdg[@wit[contains(., 'I')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#I'] => count()"/><xsl:text> S </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')][contains(., 'S')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>I </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')]] => count() - .//rdg[@wit[contains(., 'I')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#I'] => count()"/><xsl:text> W </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'I')][contains(., 'W')]] => count()"/><xsl:text>&#10;</xsl:text>
            
            <xsl:text>J </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')]] => count() - .//rdg[@wit[contains(., 'J')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#J'] => count()"/><xsl:text> C </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')][contains(., 'C')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>J </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')]] => count() - .//rdg[@wit[contains(., 'J')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#J'] => count()"/><xsl:text> D </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')][contains(., 'D')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>J </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')]] => count() - .//rdg[@wit[contains(., 'J')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#J'] => count()"/><xsl:text> I </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')][contains(., 'I')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>J </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')]] => count() - .//rdg[@wit[contains(., 'J')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#J'] => count()"/><xsl:text> O </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')][contains(., 'O')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>J </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')]] => count() - .//rdg[@wit[contains(., 'J')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#J'] => count()"/><xsl:text> R </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')][contains(., 'R')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>J </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')]] => count() - .//rdg[@wit[contains(., 'J')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#J'] => count()"/><xsl:text> S </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')][contains(., 'S')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>J </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')]] => count() - .//rdg[@wit[contains(., 'J')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#J'] => count()"/><xsl:text> W </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'J')][contains(., 'W')]] => count()"/><xsl:text>&#10;</xsl:text>
            
            <xsl:text>O </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')]] => count() - .//rdg[@wit[contains(., 'O')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#O'] => count()"/><xsl:text> C </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')][contains(., 'C')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>O </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')]] => count() - .//rdg[@wit[contains(., 'O')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#O'] => count()"/><xsl:text> D </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')][contains(., 'D')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>O </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')]] => count() - .//rdg[@wit[contains(., 'O')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#O'] => count()"/><xsl:text> I </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')][contains(., 'I')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>O </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')]] => count() - .//rdg[@wit[contains(., 'O')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#O'] => count()"/><xsl:text> J </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')][contains(., 'J')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>O </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')]] => count() - .//rdg[@wit[contains(., 'O')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#O'] => count()"/><xsl:text> R </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')][contains(., 'R')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>O </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')]] => count() - .//rdg[@wit[contains(., 'O')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#O'] => count()"/><xsl:text> S </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')][contains(., 'S')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>O </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')]] => count() - .//rdg[@wit[contains(., 'O')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#O'] => count()"/><xsl:text> W </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'O')][contains(., 'W')]] => count()"/><xsl:text>&#10;</xsl:text>
            
            <xsl:text>R </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')]] => count() - .//rdg[@wit[contains(., 'R')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#R'] => count()"/><xsl:text> C </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')][contains(., 'C')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>R </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')]] => count() - .//rdg[@wit[contains(., 'R')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#R'] => count()"/><xsl:text> D </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')][contains(., 'D')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>R </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')]] => count() - .//rdg[@wit[contains(., 'R')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#R'] => count()"/><xsl:text> I </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')][contains(., 'I')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>R </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')]] => count() - .//rdg[@wit[contains(., 'R')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#R'] => count()"/><xsl:text> J </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')][contains(., 'J')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>R </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')]] => count() - .//rdg[@wit[contains(., 'R')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#R'] => count()"/><xsl:text> O </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')][contains(., 'O')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>R </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')]] => count() - .//rdg[@wit[contains(., 'R')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#R'] => count()"/><xsl:text> S </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')][contains(., 'S')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>R </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')]] => count() - .//rdg[@wit[contains(., 'R')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#R'] => count()"/><xsl:text> W </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'R')][contains(., 'W')]] => count()"/><xsl:text>&#10;</xsl:text>
            
            <xsl:text>S </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')]] => count() - .//rdg[@wit[contains(., 'S')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#S'] => count()"/><xsl:text> C </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')][contains(., 'C')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>S </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')]] => count() - .//rdg[@wit[contains(., 'S')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#S'] => count()"/><xsl:text> D </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')][contains(., 'D')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>S </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')]] => count() - .//rdg[@wit[contains(., 'S')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#S'] => count()"/><xsl:text> I </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')][contains(., 'I')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>S </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')]] => count() - .//rdg[@wit[contains(., 'S')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#S'] => count()"/><xsl:text> J </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')][contains(., 'J')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>S </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')]] => count() - .//rdg[@wit[contains(., 'S')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#S'] => count()"/><xsl:text> O </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')][contains(., 'O')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>S </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')]] => count() - .//rdg[@wit[contains(., 'S')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#S'] => count()"/><xsl:text> R </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')][contains(., 'R')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>S </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')]] => count() - .//rdg[@wit[contains(., 'S')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#S'] => count()"/><xsl:text> W </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'S')][contains(., 'W')]] => count()"/><xsl:text>&#10;</xsl:text>
            
            <xsl:text>W </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')]] => count() - .//rdg[@wit[contains(., 'W')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#W'] => count()"/><xsl:text> C </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')][contains(., 'C')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>W </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')]] => count() - .//rdg[@wit[contains(., 'W')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#W'] => count()"/><xsl:text> D </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')][contains(., 'D')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>W </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')]] => count() - .//rdg[@wit[contains(., 'W')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#W'] => count()"/><xsl:text> I </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')][contains(., 'I')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>W </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')]] => count() - .//rdg[@wit[contains(., 'W')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#W'] => count()"/><xsl:text> J </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')][contains(., 'J')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>W </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')]] => count() - .//rdg[@wit[contains(., 'W')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#W'] => count()"/><xsl:text> O </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')][contains(., 'O')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>W </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')]] => count() - .//rdg[@wit[contains(., 'W')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#W'] => count()"/><xsl:text> R </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')][contains(., 'R')]] => count()"/><xsl:text>&#10;</xsl:text>
            <xsl:text>W </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')]] => count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')]] => count() - .//rdg[@wit[contains(., 'W')]][not(descendant::text())] =>count()"/><xsl:text> </xsl:text><xsl:value-of select=".//rdg[@wit='#W'] => count()"/><xsl:text> S </xsl:text><xsl:value-of select=".//rdg[@wit[contains(., 'W')][contains(., 'S')]] => count()"/><xsl:text>&#10;</xsl:text>            
        </xsl:result-document>
    </xsl:template>

</xsl:stylesheet>