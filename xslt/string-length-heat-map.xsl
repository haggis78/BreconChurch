<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:variable name="currentEdition" as="node()+" select="descendant::altIdentifier/note"/>
    <xsl:template match="/">
        <xsl:result-document method="xhtml" indent="yes" href="../site/html/analysis/string-length-heat-map.html">
            <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                    <link rel="stylesheet" type="text/css" href="../../css/brecon.css"/>
                    <link rel="icon" href="../../img/background/brecon-favicon.png"/>
                    <script src="../../javascript/string-length-hm.js"/>
                    <title>Brecon | Network Analysis</title>
                </head>
                <body>
                    <xsl:comment> SSI line below </xsl:comment>
                    <div class="header">
                        <img src="../../img/background/brecon.svg" alt="Image of 'Brecon Collegiate Church and School' in script across the top"/>
                    </div>
                    <div id="navbar">
                        <div class="navbar">
                            <a href="../../index.html">Home</a>
                            <div class="dropdown">
                                <button class="dropbtn">About<i class="fa fa-caret-down"></i>
                                </button>
                                <div class="dropdown-content">
                                    <a href="../about/history.html">History</a>
                                    <a href="../about/Glossary.html">Glossary</a>
                                    <a href="../about/BreconPeople.html">People</a>
                                    <a href="../about/methodology.html">Methodology</a>
                                    <a href="../about/Project_Team.html">About Team</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="dropbtn">Analysis<i class="fa fa-caret-down"></i>
                                </button>
                                <div class="dropdown-content">
                                    <a href="Timeline.html">Timeline</a>
                                    <a href="TextualAnalysis.html#codicum">Stemma</a>
                                    <a href="Graphs.html">Graphs</a>
                                    <a href="network.html">Network</a>
                                    <a href="TextualAnalysis.html">Textual</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="dropbtn">Witnesses<i class="fa fa-caret-down"></i>
                                </button>
                                <div class="dropdown-content">
                                    <a href="../witnesses/texts.html">Source Descriptions</a>
                                    <a href="../witnesses/patent-collection.html">Patent Roll</a>
                                    <a href="../witnesses/transcripts/display-R.html">Manuscript R</a>
                                    <a href="../witnesses/transcripts/display-C.html">Manuscript C</a>
                                    <a href="../witnesses/transcripts/display-D.html">Manuscript D</a>
                                    <a href="../witnesses/transcripts/display-I.html">Manuscript I</a>
                                    <a href="../witnesses/transcripts/display-O.html">Manuscript O</a>
                                    <a href="../witnesses/transcripts/display-W.html">Printing W</a>
                                    <a href="../witnesses/transcripts/display-S.html">Printing S</a>
                                    <a href="../witnesses/transcripts/display-J.html">Printing J</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="dropbtn">Comparison<i class="fa fa-caret-down"></i>
                                </button>
                                <div class="dropdown-content">
                                    <a>Transcripts (WiP)</a>
                                    <a>Anonymous Blocks (WiP)</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <xsl:comment>#include virtual="../ssi/analysis-ssi.html" </xsl:comment>
                    <div class="content">
                        <div class="varianceGraphic">
                            <svg xmlns="http://www.w3.org/2000/svg" width="1400" height="115" viewBox="0 0 1450 115">
                                <xsl:for-each select="(descendant::rdg)[position() le 70]">
                                    <xsl:if test="attribute(wit)[contains(., 'C')]">
                                        <xsl:if test=".[string-length() = 0]">
                                            <rect id="C-0-{preceding::app => count() + 1}" x="{preceding::app * 14}" y="0" width="14" height="14" stroke="white">
                                                <title>
                                                    <xsl:text>C App #</xsl:text>
                                                    <xsl:value-of select="position()"/>
                                                    <xsl:text>: No Text</xsl:text>
                                                </title>
                                            </rect>
                                        </xsl:if>
<!--                                        <xsl:if test=".[string-length() = 1]"></xsl:if>
                                        <xsl:if test=".[string-length() = 2]"></xsl:if>
                                        <xsl:if test=".[string-length() = 3]"></xsl:if>
                                        <xsl:if test=".[string-length() = 4]"></xsl:if>
                                        <xsl:if test=".[string-length() = 5]"></xsl:if>
                                        <xsl:if test=".[string-length() = 6]"></xsl:if>
                                        <xsl:if test=".[string-length() = 7]"></xsl:if>
                                        <xsl:if test=".[string-length() = 8]"></xsl:if>
                                        <xsl:if test=".[string-length() = 9]"></xsl:if>
                                        <xsl:if test=".[string-length() = 10]"></xsl:if>
                                        <xsl:if test=".[string-length() = 11]"></xsl:if>
                                        <xsl:if test=".[string-length() = 12]"></xsl:if>
                                        <xsl:if test=".[string-length() = 13]"></xsl:if>
                                        <xsl:if test=".[string-length() = 14]"></xsl:if>
                                        <xsl:if test=".[string-length() = 15]"></xsl:if>
                                        <xsl:if test=".[string-length() ge 16 and string-length() le 35]"></xsl:if>
                                        <xsl:if test=".[string-length() ge 36 and string-length() le 55]"></xsl:if>
                                        <xsl:if test=".[string-length() ge 56 and string-length() le 75]"></xsl:if>
                                        <xsl:if test=".[string-length() ge 76 and string-length() le 95]"></xsl:if>
                                        <xsl:if test=".[string-length() ge 96 and string-length() le 115]"></xsl:if>
                                        <xsl:if test=".[string-length() ge 116 and string-length() le 135]"></xsl:if>
                                        <xsl:if test=".[string-length() ge 136 and string-length() le 155]"></xsl:if>
                                        <xsl:if test=".[string-length() ge 156 and string-length() le 175]"></xsl:if>
                                        <xsl:if test=".[string-length() ge 176 and string-length() le 195]"></xsl:if>
                                        <xsl:if test=".[string-length() ge 196 and string-length() le 215]"></xsl:if>
                                        <xsl:if test=".[string-length() ge 216 and string-length() le 235]"></xsl:if>
                                        <xsl:if test=".[string-length() ge 236 and string-length() le 255]"></xsl:if>-->
                                    </xsl:if>
                                </xsl:for-each>
                            </svg>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
</xsl:stylesheet>
