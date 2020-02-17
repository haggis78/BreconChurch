<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math" xmlns="http://www.w3.org/1999/xhtml" version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
    <xsl:variable name="currentEdition" as="node()+" select="descendant::altIdentifier/note"/>
    <xsl:template match="/">
        <xsl:result-document method="xhtml" indent="yes" href="../site/html/analysis/similarity-heat-map-expanded.html">
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
                        <img src="../../img/background/brecon.svg" alt="Image of 'Brecon Collegiate Church and School' in script across the top" />
                    </div>
                    <div id="navbar">
                        <div class="navbar"><a href="../../index.html">Home</a><div class="dropdown"><button class="dropbtn">About<i class="fa fa-caret-down"></i></button><div class="dropdown-content"><a href="../about/history.html">History</a><a href="../about/Glossary.html">Glossary</a><a href="../about/BreconPeople.html">People</a><a href="../about/methodology.html">Methodology</a><a href="../about/Project_Team.html">About Team</a></div>
                        </div>
                            <div class="dropdown">
                                <button class="dropbtn">Analysis<i class="fa fa-caret-down"></i></button>
                                <div class="dropdown-content">
                                    <a href="Timeline.html">Timeline</a>
                                    <a href="TextualAnalysis.html#codicum">Stemma</a>
                                    <a href="Graphs.html">Graphs</a>
                                    <a href="string-length-heat-map.html">String Length Heat Map</a>
                                    <a href="similarity-heat-map.html">App Similarity Heat Map</a>
                                    <a href="network.html">Network</a>
                                    <a href="TextualAnalysis.html">Textual</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="dropbtn">Witnesses<i class="fa fa-caret-down"></i></button>
                                <div class="dropdown-content">
                                    <a href="../witnesses/texts.html">Source Descriptions</a>
                                    <a href="../witnesses/patent-collection.html">Patent Roll</a>
                                    <a href="../witnesses/display-R.html">Manuscript R</a>
                                    <a href="../witnesses/display-C.html">Manuscript C</a>
                                    <a href="../witnesses/display-D.html">Manuscript D</a>
                                    <a href="../witnesses/display-I.html">Manuscript I</a>
                                    <a href="../witnesses/display-O.html">Manuscript O</a>
                                    <a href="../witnesses/display-W.html">Printing W</a>
                                    <a href="../witnesses/display-S.html">Printing S</a>
                                    <a href="../witnesses/display-J.html">Printing J</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="dropbtn">Comparison<i class="fa fa-caret-down"></i></button>
                                <div class="dropdown-content">
                                    <a>Transcripts (WiP)</a>
                                    <a>Anonymous Blocks (WiP)</a>
                                </div>
                            </div>
                            <div class="editions">
                                <a>C</a>
                                <a>D</a>
                                <a>I</a>
                                <a>J</a>
                                <a>O</a>
                                <a>R</a>
                                <a>S</a>
                                <a>W</a>
                            </div>
                        </div>
                        <div class="hmKey">
                            <svg xmlns="http://www.w3.org/2000/svg" width="1400" height="30" viewBox="0 -10 1450 30">
                                <g transform="scale(.95), translate(0, -10)">
                                    <g>
                                        <rect x="20" y="0" width="180" height="30" fill="#e50000"/>
                                        <rect x="200" y="0" width="180" height="30" fill="#e62e01"/>
                                        <rect x="380" y="0" width="180" height="30" fill="#e75c02"/>
                                        <rect x="560" y="0" width="180" height="30" fill="#e88b03"/>
                                        <rect x="740" y="0" width="180" height="30" fill="#e9b904"/>
                                        <rect x="920" y="0" width="180" height="30" fill="#eae705"/>
                                        <rect x="1100" y="0" width="180" height="30" fill="#bfeb06"/>
                                        <rect x="1280" y="0" width="180" height="30" fill="#93ec07"/>
                                    </g>
                                    <g>
                                        <text x="110" y="20" font-size="14" stroke="black" text-anchor="middle">Unique</text>
                                        <text x="290" y="20" font-size="14" stroke="black" text-anchor="middle">1 in Common</text>
                                        <text x="470" y="20" font-size="14" stroke="black" text-anchor="middle">2 in Common</text>
                                        <text x="650" y="20" font-size="14" stroke="black" text-anchor="middle">3 in Common</text>
                                        <text x="830" y="20" font-size="14" stroke="black" text-anchor="middle">4 in Common</text>
                                        <text x="1010" y="20" font-size="14" stroke="black" text-anchor="middle">5 in Common</text>
                                        <text x="1190" y="20" font-size="14" stroke="black" text-anchor="middle">6 in Common</text>
                                        <text x="1370" y="20" font-size="14" stroke="black" text-anchor="middle">All in Common</text>
                                    </g>
                                    <g opacity="0">
                                        <rect x="20" y="0" width="180" height="30">
                                            <title>Unique to that edition</title>
                                        </rect>
                                        <rect x="200" y="0" width="180" height="30">
                                            <title>1 Other Edition in Common</title>
                                        </rect>
                                        <rect x="380" y="0" width="180" height="30">
                                            <title>2 Other Edition in Common</title>
                                        </rect>
                                        <rect x="560" y="0" width="180" height="30">
                                            <title>3 Other Edition in Common</title>
                                        </rect>
                                        <rect x="740" y="0" width="180" height="30">
                                            <title>4 Other Edition in Common</title>
                                        </rect>
                                        <rect x="920" y="0" width="180" height="30">
                                            <title>5 Other Edition in Common</title>
                                        </rect>
                                        <rect x="1100" y="0" width="180" height="30">
                                            <title>6 Other Edition in Common</title>
                                        </rect>
                                        <rect x="1280" y="0" width="180" height="30">
                                            <title>All Editions have this text in Common</title>
                                        </rect>
                                    </g>
                                </g>
                            </svg>
                        </div>
                        <div class="hmKey">
                            <svg xmlns="http://www.w3.org/2000/svg" width="1400" height="30" viewBox="0 0 1450 30">
                                <g>
                                    <rect x="20" y="0" width="200" height="30" fill="#ff3399"/>
                                    <rect x="220" y="0" width="200" height="30" fill="#ff9900"/>
                                    <rect x="420" y="0" width="200" height="30" fill="#ffff00"/>
                                    <rect x="620" y="0" width="200" height="30" fill="#33cc33"/>
                                    <rect x="820" y="0" width="200" height="30" fill="#00ffff"/>
                                    <rect x="1020" y="0" width="200" height="30" fill="#0000ff"/>
                                    <rect x="1220" y="0" width="200" height="30" fill="#990099"/>
                                </g>
                                <g>
                                    <text x="120" y="20" text-anchor="middle">Most in Common</text>
                                    <text x="320" y="20" text-anchor="middle">2nd Most in Common</text>
                                    <text x="520" y="20" text-anchor="middle">3rd Most in Common</text>
                                    <text x="720" y="20" text-anchor="middle">4th Most in Common</text>
                                    <text x="920" y="20" text-anchor="middle">5th Most in Common</text>
                                    <text x="1120" y="20" text-anchor="middle">6th in Common</text>
                                    <text x="1320" y="20" text-anchor="middle">Least in Common</text>
                                </g>
                            </svg>
                        </div>
                    </div>
                    <xsl:comment>#include virtual="../ssi/analysis-similarity-heatmap-ssi.html" </xsl:comment>
                    <div class="content">
                        <h1>Edition C: Similarity Heat Map Breakdown</h1>
                        <p>On this page, you'll find a graphic that measures the similarities between each witness. The witnesses are listed vertically while the apps are horizontal and a key is held in the navigation bar.</p>
                        <div class="varianceGraphic">
                            <svg xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                <g transform="translate(10, 0)">
                                    <g>
                                        <text x="-10" y="13" font-size="16">C</text>
                                        <text x="-10" y="23" font-size="12">D</text>
                                        <text x="-10" y="36" font-size="12">I</text>
                                        <text x="-10" y="50" font-size="12">J</text>
                                        <text x="-10" y="63" font-size="12">O</text>
                                        <text x="-10" y="77" font-size="12">R</text>
                                        <text x="-10" y="90" font-size="12">S</text>
                                        <text x="-10" y="103" font-size="12">W</text>
                                    </g>
                                    <xsl:for-each select="(descendant::app)[position() le 67]">
                                        <rect id="1-{position()}col" x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="black"/>
                                    </xsl:for-each>
                                    <xsl:for-each select="(descendant::rdg)[position() le 146]">
                                        <xsl:if test=".[@wit[contains(., 'C')]]">
                                            <xsl:choose>
                                                <xsl:when test=".[@wit='#C']">
                                                    <rect id="C-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: Unique to C &#10;</xsl:text>
                                                            <xsl:value-of select=".//text()"/>
                                                        </title>
                                                    </rect>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                    <rect id="C-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 1 in Common &#10;</xsl:text>
                                                            <xsl:value-of select=".//text()"/>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                    <rect id="C-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 2 in Common &#10;</xsl:text>
                                                            <xsl:value-of select=".//text()"/>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                    <rect id="C-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 3 in Common &#10;</xsl:text>
                                                            <xsl:value-of select=".//text()"/>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                    <rect id="C-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 4 in Common &#10;</xsl:text>
                                                            <xsl:value-of select=".//text()"/>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                    <rect id="C-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 5 in Common &#10;</xsl:text>
                                                            <xsl:value-of select=".//text()"/>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                    <rect id="C-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 6 in Common &#10;</xsl:text>
                                                            <xsl:value-of select=".//text()"/>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                    <rect id="C-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: All in Common &#10;</xsl:text>
                                                            <xsl:value-of select=".//text()"/>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                            </xsl:choose>
                                        </xsl:if>
                                    </xsl:for-each>
                                </g>
                            </svg>
                            <svg xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                <g transform="translate(-928, 0)">
                                    <g>
                                        <text x="928" y="13" font-size="16">C</text>
                                        <text x="928" y="23" font-size="12">D</text>
                                        <text x="928" y="36" font-size="12">I</text>
                                        <text x="928" y="50" font-size="12">J</text>
                                        <text x="928" y="63" font-size="12">O</text>
                                        <text x="928" y="77" font-size="12">R</text>
                                        <text x="928" y="90" font-size="12">S</text>
                                        <text x="928" y="103" font-size="12">W</text>
                                    </g>
                                    <xsl:for-each select="(descendant::rdg)[position() ge 147 and position() le 299]">
                                        <rect id="col-2-{position()}" x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="black"/>
                                    </xsl:for-each>
                                    <xsl:for-each select="(descendant::rdg)[position() ge 147 and position() le 299]">
                                        <xsl:if test=".[@wit[contains(., 'C')]]">
                                            <xsl:choose>
                                                <xsl:when test=".[@wit='#C']">
                                                    <rect id="C-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: Unique to C</xsl:text>
                                                        </title>
                                                    </rect>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                    <rect id="C-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 1 in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                    <rect id="C-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 2 in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                    <rect id="C-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 3 in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                    <rect id="C-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 4 in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                    <rect id="C-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 5 in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                    <rect id="C-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 6 in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                    <rect id="C-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: All in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                            </xsl:choose>
                                        </xsl:if>
                                    </xsl:for-each>
                                </g>
                            </svg>
                            <svg xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                <g transform="translate(-1866, 0)">
                                    <g>
                                        <text x="1866" y="13" font-size="16">C</text>
                                        <text x="1866" y="23" font-size="12">D</text>
                                        <text x="1866" y="36" font-size="12">I</text>
                                        <text x="1866" y="50" font-size="12">J</text>
                                        <text x="1866" y="63" font-size="12">O</text>
                                        <text x="1866" y="77" font-size="12">R</text>
                                        <text x="1866" y="90" font-size="12">S</text>
                                        <text x="1866" y="103" font-size="12">W</text>
                                    </g>
                                    <xsl:for-each select="(descendant::rdg)[position() ge 300 and position() le 462]">
                                        <rect id="col-3-{position()}" x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="black"/>
                                    </xsl:for-each>
                                    <xsl:for-each select="(descendant::rdg)[position() ge 300 and position() le 462]">
                                        <xsl:if test=".[@wit[contains(., 'C')]]">
                                            <xsl:choose>
                                                <xsl:when test=".[@wit='#C']">
                                                    <rect id="C-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: Unique to C</xsl:text>
                                                        </title>
                                                    </rect>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                    <rect id="C-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 1 in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                    <rect id="C-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 2 in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                    <rect id="C-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 3 in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                    <rect id="C-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 4 in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                    <rect id="C-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 5 in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                    <rect id="C-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 6 in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                    <rect id="C-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: All in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                            </xsl:choose>
                                        </xsl:if>
                                    </xsl:for-each>
                                </g>
                            </svg>
                            <svg xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                <g transform="translate(-2804, 0)">
                                    <g>
                                        <text x="2804" y="13" font-size="16">C</text>
                                        <text x="2804" y="23" font-size="12">D</text>
                                        <text x="2804" y="36" font-size="12">I</text>
                                        <text x="2804" y="50" font-size="12">J</text>
                                        <text x="2804" y="63" font-size="12">O</text>
                                        <text x="2804" y="77" font-size="12">R</text>
                                        <text x="2804" y="90" font-size="12">S</text>
                                        <text x="2804" y="103" font-size="12">W</text>
                                    </g>
                                    <xsl:for-each select="(descendant::rdg)[position() ge 463]">
                                        <rect id="col-4-{position()}" x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="black"/>
                                    </xsl:for-each>
                                    <xsl:for-each select="(descendant::rdg)[position() ge 463]">
                                        <xsl:if test=".[@wit[contains(., 'C')]]">
                                            <xsl:choose>
                                                <xsl:when test=".[@wit='#C']">
                                                    <rect id="C-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: Unique to C</xsl:text>
                                                        </title>
                                                    </rect>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                    <rect id="C-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 1 in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                    <rect id="C-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 2 in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                    <rect id="C-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 3 in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                    <rect id="C-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 4 in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                    <rect id="C-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 5 in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                    <rect id="C-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: 6 in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                                <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                    <rect id="C-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                        <title>
                                                            <xsl:text>C App #</xsl:text>
                                                            <xsl:value-of select="preceding::app => count() + 1"/>
                                                            <xsl:text>: All in Common</xsl:text>
                                                        </title>
                                                    </rect>
                                                    <g>
                                                        <xsl:if test=".[@wit[contains(., 'D')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#33cc33">
                                                                <title>Witness D</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'I')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#00ffff">
                                                                <title>Witness I</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'J')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff9900">
                                                                <title>Witness J</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'O')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#0000ff">
                                                                <title>Witness O</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'R')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ff3399">
                                                                <title>Witness R</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'S')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffff00">
                                                                <title>Witness S</title>
                                                            </circle>
                                                        </xsl:if>
                                                        <xsl:if test=".[@wit[contains(., 'W')]]">
                                                            <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff9900">
                                                                <title>Witness W</title>
                                                            </circle>
                                                        </xsl:if>
                                                    </g>
                                                </xsl:when>
                                            </xsl:choose>
                                        </xsl:if>
                                    </xsl:for-each>
                                </g>
                            </svg>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
</xsl:stylesheet>