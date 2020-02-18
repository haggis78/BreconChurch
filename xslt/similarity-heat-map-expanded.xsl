<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math" xmlns="http://www.w3.org/1999/xhtml" version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
    <xsl:variable name="currentEdition" as="node()+" select="descendant::altIdentifier/note"/>
    <xsl:template match="/">
        <xsl:result-document method="xhtml" indent="yes" href="../site/html/comparison/c-app-hm-expanded.html">
            <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                    <link rel="stylesheet" type="text/css" href="../../css/brecon.css"/>
                    <link rel="icon" href="../../img/background/brecon-favicon.png"/>
                    <script src="../../javascript/string-length-hm.js"/>
                    <title>Brecon | C Similarity Expanded</title>
                </head>
                <body>
                    <xsl:comment> SSI line below </xsl:comment>
                    <xsl:comment>#include virtual="../ssi/analysis-similarity-heatmap-expanded-ssi.html" </xsl:comment>
                    <div class="content">
                        <h1>Edition C: Similarity Heat Map Breakdown</h1>
                        <p>On this page, you'll find a graphic that measures the similarities between each witness. The witnesses are listed vertically while the apps are horizontal and a key is held in the navigation bar.
                           The top row is the edition being compared to the other witnesses (this edition's letter is a larger font size). The following rows are for the other editions in order of most to least common. 
                        </p>
                        <div class="varianceGraphic">
                            <div class="svg-expanded">
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(10, 0)">
                                        <g>
                                            <a xlink:href="c-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="0" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="13" font-size="16">C</text>
                                            </a>
                                            <a xlink:href="o-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="14" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="25" font-size="12">O</text>
                                            </a>
                                            <a xlink:href="i-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="26" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="36" font-size="12">I</text>
                                            </a>
                                            <a xlink:href="d-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="37" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="50" font-size="12">D</text>
                                            </a>
                                            <a xlink:href="w-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="51" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="63" font-size="12">W</text>
                                            </a>
                                            <a xlink:href="j-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="64" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="77" font-size="12">J</text>
                                            </a>
                                            <a xlink:href="s-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="78" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="90" font-size="12">S</text>
                                            </a>
                                            <a xlink:href="r-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="91" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="103" font-size="12">R</text>
                                            </a>
                                        </g>
                                        <xsl:for-each select="(descendant::app)[position() le 67]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                        <rect id="C-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">\
                                                            <title>
                                                                <xsl:text>C App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 4 in Common &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                </xsl:choose>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm2" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-928, 0)">
                                        <g>
                                            <a xlink:href="c-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="0" height="13" width="20" opacity="0"/>
                                                <text x="928" y="13" font-size="16">C</text>
                                            </a>
                                            <a xlink:href="o-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="14" height="13" width="20" opacity="0"/>
                                                <text x="928" y="25" font-size="12">O</text>
                                            </a>
                                            <a xlink:href="i-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="26" height="13" width="20" opacity="0"/>
                                                <text x="928" y="36" font-size="12">I</text>
                                            </a>
                                            <a xlink:href="d-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="37" height="13" width="20" opacity="0"/>
                                                <text x="928" y="50" font-size="12">D</text>
                                            </a>
                                            <a xlink:href="w-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="51" height="13" width="20" opacity="0"/>
                                                <text x="928" y="63" font-size="12">W</text>
                                            </a>
                                            <a xlink:href="j-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="64" height="13" width="20" opacity="0"/>
                                                <text x="928" y="77" font-size="12">J</text>
                                            </a>
                                            <a xlink:href="s-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="78" height="13" width="20" opacity="0"/>
                                                <text x="928" y="90" font-size="12">S</text>
                                            </a>
                                            <a xlink:href="r-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="91" height="13" width="20" opacity="0"/>
                                                <text x="928" y="103" font-size="12">R</text>
                                            </a>
                                        </g>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 147 and position() le 299]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 147 and position() le 299]">
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                        <rect id="C-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">\
                                                            <title>
                                                                <xsl:text>C App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 4 in Common &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                </xsl:choose>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm3" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-1866, 0)">
                                        <g>
                                            <a xlink:href="c-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="0" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="13" font-size="16">C</text>
                                            </a>
                                            <a xlink:href="o-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="14" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="25" font-size="12">O</text>
                                            </a>
                                            <a xlink:href="i-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="26" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="36" font-size="12">I</text>
                                            </a>
                                            <a xlink:href="d-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="37" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="50" font-size="12">D</text>
                                            </a>
                                            <a xlink:href="w-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="51" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="63" font-size="12">W</text>
                                            </a>
                                            <a xlink:href="j-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="64" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="77" font-size="12">J</text>
                                            </a>
                                            <a xlink:href="s-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="78" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="90" font-size="12">S</text>
                                            </a>
                                            <a xlink:href="r-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="91" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="103" font-size="12">R</text>
                                            </a>
                                        </g>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 300 and position() le 462]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 300 and position() le 462]">
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                        <rect id="C-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">\
                                                            <title>
                                                                <xsl:text>C App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 4 in Common &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                </xsl:choose>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm4" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-2804, 0)">
                                        <g>
                                            <a xlink:href="c-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="0" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="13" font-size="16">C</text>
                                            </a>
                                            <a xlink:href="o-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="14" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="25" font-size="12">O</text>
                                            </a>
                                            <a xlink:href="i-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="26" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="36" font-size="12">I</text>
                                            </a>
                                            <a xlink:href="d-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="37" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="50" font-size="12">D</text>
                                            </a>
                                            <a xlink:href="w-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="51" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="63" font-size="12">W</text>
                                            </a>
                                            <a xlink:href="j-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="64" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="77" font-size="12">J</text>
                                            </a>
                                            <a xlink:href="s-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="78" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="90" font-size="12">S</text>
                                            </a>
                                            <a xlink:href="r-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="91" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="103" font-size="12">R</text>
                                            </a>
                                        </g>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 463]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                    <xsl:for-each select="(descendant::rdg)[position() ge 463]">
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                        <rect id="C-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">\
                                                            <title>
                                                                <xsl:text>C App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 4 in Common &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                            <div class="table-expanded">
                                <table id="expanded">
                                    <caption>Edition C: Breakdown</caption>
                                    <tr>
                                        <th>Witness</th>
                                        <th>Number</th>
                                        <th>Percent</th>
                                    </tr>
                                    <tr>
                                        <td><b>C</b></td>
                                        <td><b>21</b></td>
                                        <td><b>7.8</b></td>
                                    </tr>
                                    <tr>
                                        <td>O</td>
                                        <td>215</td>
                                        <td>80.2</td>
                                    </tr>
                                    <tr>
                                        <td>I</td>
                                        <td>211</td>
                                        <td>78.7</td>
                                    </tr>
                                    <tr>
                                        <td>D</td>
                                        <td>192</td>
                                        <td>71.6</td>
                                    </tr>
                                    <tr>
                                        <td>W</td>
                                        <td>143</td>
                                        <td>66.2</td>
                                    </tr>
                                    <tr>
                                        <td>J</td>
                                        <td>116</td>
                                        <td>43.3</td>
                                    </tr>
                                    <tr>
                                        <td>S</td>
                                        <td>116</td>
                                        <td>43.3</td>
                                    </tr>
                                    <tr>
                                        <td>R</td>
                                        <td>110</td>
                                        <td>41.0</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document method="xhtml" indent="yes" href="../site/html/comparison/d-app-hm-expanded.html">
            <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                    <link rel="stylesheet" type="text/css" href="../../css/brecon.css"/>
                    <link rel="icon" href="../../img/background/brecon-favicon.png"/>
                    <script src="../../javascript/string-length-hm.js"/>
                    <title>Brecon | D Similarity Expanded</title>
                </head>
                <body>
                    <xsl:comment> SSI line below </xsl:comment>
                    <xsl:comment>#include virtual="../ssi/analysis-similarity-heatmap-expanded-ssi.html" </xsl:comment>
                    <div class="content">
                        <h1>Edition D: Similarity Heat Map Breakdown</h1>
                        <p>On this page, you'll find a graphic that measures the similarities between each witness. The witnesses are listed vertically while the apps are horizontal and a key is held in the navigation bar.
                            The top row is the edition being compared to the other witnesses (this edition's letter is a larger font size). The following rows are for the other editions in order of most to least common. 
                        </p>
                        <div class="varianceGraphic">
                            <div class="svg-expanded">
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(10, 0)">
                                        <g>
                                            <a xlink:href="d-app-hm-expanded.html" xlink:title="D App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="0" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="13" font-size="16">D</text>
                                            </a>
                                            <a xlink:href="c-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="37" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="25" font-size="12">C</text>
                                            </a>
                                            <a xlink:href="i-app-hm-expanded.html" xlink:title="I App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="26" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="36" font-size="12">I</text>
                                            </a>
                                            <a xlink:href="o-app-hm-expanded.html" xlink:title="O App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="14" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="50" font-size="12">O</text>
                                            </a>
                                            <a xlink:href="w-app-hm-expanded.html" xlink:title="W App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="51" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="63" font-size="12">W</text>
                                            </a>
                                            <a xlink:href="r-app-hm-expanded.html" xlink:title="R App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="91" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="77" font-size="12">R</text>
                                            </a>
                                            <a xlink:href="s-app-hm-expanded.html" xlink:title="S App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="78" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="90" font-size="12">S</text>
                                            </a>
                                            <a xlink:href="j-app-hm-expanded.html" xlink:title="J App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="64" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="103" font-size="12">J</text>
                                            </a>
                                        </g>
                                        <xsl:for-each select="(descendant::app)[position() le 67]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() le 146]">
                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                <xsl:choose>
                                                    <xsl:when test=".[@wit='#D']">
                                                        <rect id="D-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: Unique to D &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                        <rect id="D-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 1 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                        <rect id="D-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 2 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                        <rect id="D-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 3 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                        
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                        <rect id="D-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">\
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 4 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                        <rect id="D-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 5 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                        <rect id="D-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 6 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                        <rect id="D-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: All in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                </xsl:choose>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-928, 0)">
                                        <g>
                                            <a xlink:href="d-app-hm-expanded.html" xlink:title="D App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="0" height="13" width="20" opacity="0"/>
                                                <text x="928" y="13" font-size="16">D</text>
                                            </a>
                                            <a xlink:href="c-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="37" height="13" width="20" opacity="0"/>
                                                <text x="928" y="25" font-size="12">C</text>
                                            </a>
                                            <a xlink:href="i-app-hm-expanded.html" xlink:title="I App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="26" height="13" width="20" opacity="0"/>
                                                <text x="928" y="36" font-size="12">I</text>
                                            </a>
                                            <a xlink:href="o-app-hm-expanded.html" xlink:title="O App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="14" height="13" width="20" opacity="0"/>
                                                <text x="928" y="50" font-size="12">O</text>
                                            </a>
                                            <a xlink:href="w-app-hm-expanded.html" xlink:title="W App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="51" height="13" width="20" opacity="0"/>
                                                <text x="928" y="63" font-size="12">W</text>
                                            </a>
                                            <a xlink:href="r-app-hm-expanded.html" xlink:title="R App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="91" height="13" width="20" opacity="0"/>
                                                <text x="928" y="77" font-size="12">R</text>
                                            </a>
                                            <a xlink:href="s-app-hm-expanded.html" xlink:title="S App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="78" height="13" width="20" opacity="0"/>
                                                <text x="928" y="90" font-size="12">S</text>
                                            </a>
                                            <a xlink:href="j-app-hm-expanded.html" xlink:title="J App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="64" height="13" width="20" opacity="0"/>
                                                <text x="928" y="103" font-size="12">J</text>
                                            </a>
                                        </g>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 147 and position() le 299]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 147 and position() le 299]">
                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                <xsl:choose>
                                                    <xsl:when test=".[@wit='#D']">
                                                        <rect id="D-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: Unique to D &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                        <rect id="D-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 1 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                        <rect id="D-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 2 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                        <rect id="D-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 3 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                        
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                        <rect id="D-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">\
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 4 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                        <rect id="D-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 5 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                        <rect id="D-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 6 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                        <rect id="D-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: All in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                </xsl:choose>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-1866, 0)">
                                        <g>
                                            <a xlink:href="d-app-hm-expanded.html" xlink:title="D App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="0" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="13" font-size="16">D</text>
                                            </a>
                                            <a xlink:href="c-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="37" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="25" font-size="12">C</text>
                                            </a>
                                            <a xlink:href="i-app-hm-expanded.html" xlink:title="I App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="26" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="36" font-size="12">I</text>
                                            </a>
                                            <a xlink:href="o-app-hm-expanded.html" xlink:title="O App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="14" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="50" font-size="12">O</text>
                                            </a>
                                            <a xlink:href="w-app-hm-expanded.html" xlink:title="W App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="51" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="63" font-size="12">W</text>
                                            </a>
                                            <a xlink:href="r-app-hm-expanded.html" xlink:title="R App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="91" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="77" font-size="12">R</text>
                                            </a>
                                            <a xlink:href="s-app-hm-expanded.html" xlink:title="S App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="78" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="90" font-size="12">S</text>
                                            </a>
                                            <a xlink:href="j-app-hm-expanded.html" xlink:title="J App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="64" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="103" font-size="12">J</text>
                                            </a>
                                        </g>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 300 and position() le 462]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 300 and position() le 462]">
                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                <xsl:choose>
                                                    <xsl:when test=".[@wit='#D']">
                                                        <rect id="D-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: Unique to D &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                        <rect id="D-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 1 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                        <rect id="D-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 2 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                        <rect id="D-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 3 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                        
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                        <rect id="D-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">\
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 4 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                        <rect id="D-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 5 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                        <rect id="D-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 6 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                        <rect id="D-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: All in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                </xsl:choose>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-2804, 0)">
                                        <g>
                                            <a xlink:href="d-app-hm-expanded.html" xlink:title="D App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="0" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="13" font-size="16">D</text>
                                            </a>
                                            <a xlink:href="c-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="37" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="25" font-size="12">C</text>
                                            </a>
                                            <a xlink:href="i-app-hm-expanded.html" xlink:title="I App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="26" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="36" font-size="12">I</text>
                                            </a>
                                            <a xlink:href="o-app-hm-expanded.html" xlink:title="O App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="14" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="50" font-size="12">O</text>
                                            </a>
                                            <a xlink:href="w-app-hm-expanded.html" xlink:title="W App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="51" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="63" font-size="12">W</text>
                                            </a>
                                            <a xlink:href="r-app-hm-expanded.html" xlink:title="R App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="91" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="77" font-size="12">R</text>
                                            </a>
                                            <a xlink:href="s-app-hm-expanded.html" xlink:title="S App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="78" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="90" font-size="12">S</text>
                                            </a>
                                            <a xlink:href="j-app-hm-expanded.html" xlink:title="J App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="64" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="103" font-size="12">J</text>
                                            </a>
                                        </g>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 463]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 463]">
                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                <xsl:choose>
                                                    <xsl:when test=".[@wit='#D']">
                                                        <rect id="D-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: Unique to D &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                        <rect id="D-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 1 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                        <rect id="D-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 2 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                        <rect id="D-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 3 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                        
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                        <rect id="D-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">\
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 4 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                        <rect id="D-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 5 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                        <rect id="D-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 6 in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                        <rect id="D-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>D App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: All in Dommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
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
                            <div class="table-expanded">
                                <table id="expanded">
                                    <caption>Edition D: Breakdown</caption>
                                    <tr>
                                        <th>Witness</th>
                                        <th>Number</th>
                                        <th>Percent</th>
                                    </tr>
                                    <tr>
                                        <td><b>D</b></td>
                                        <td><b>50</b></td>
                                        <td><b>18.7</b></td>
                                    </tr>
                                    <tr>
                                        <td>C</td>
                                        <td>192</td>
                                        <td>71.6</td>
                                    </tr>
                                    <tr>
                                        <td>I</td>
                                        <td>171</td>
                                        <td>63.8</td>
                                    </tr>
                                    <tr>
                                        <td>O</td>
                                        <td>166</td>
                                        <td>61.9</td>
                                    </tr>
                                    <tr>
                                        <td>W</td>
                                        <td>122</td>
                                        <td>45.5</td>
                                    </tr>
                                    <tr>
                                        <td>R</td>
                                        <td>101</td>
                                        <td>37.7</td>
                                    </tr>
                                    <tr>
                                        <td>S</td>
                                        <td>95</td>
                                        <td>35.4</td>
                                    </tr>
                                    <tr>
                                        <td>J</td>
                                        <td>94</td>
                                        <td>35.1</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document method="xhtml" indent="yes" href="../site/html/comparison/i-app-hm-expanded.html">
            <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                    <link rel="stylesheet" type="text/css" href="../../css/brecon.css"/>
                    <link rel="icon" href="../../img/background/brecon-favicon.png"/>
                    <script src="../../javascript/string-length-hm.js"/>
                    <title>Brecon | I Similarity Expanded</title>
                </head>
                <body>
                    <xsl:comment> SSI line below </xsl:comment>
                    <xsl:comment>#include virtual="../ssi/analysis-similarity-heatmap-expanded-ssi.html" </xsl:comment>
                    <div class="content">
                        <h1>Edition I: Similarity Heat Map Breakdown</h1>
                        <p>On this page, you'll find a graphic that measures the similarities between each witness. The witnesses are listed vertically while the apps are horizontal and a key is held in the navigation bar.
                            The top row is the edition being compared to the other witnesses (this edition's letter is a larger font size). The following rows are for the other editions in order of most to least common. 
                        </p>
                        <div class="varianceGraphic">
                            <div class="svg-expanded">
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(10, 0)">
                                        <g>
                                            <a xlink:href="i-app-hm-expanded.html" xlink:title="I App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="0" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="13" font-size="16">I</text>
                                            </a>
                                            <a xlink:href="o-app-hm-expanded.html" xlink:title="O App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="14" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="25" font-size="12">O</text>
                                            </a>
                                            <a xlink:href="c-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="26" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="36" font-size="12">C</text>
                                            </a>
                                            <a xlink:href="d-app-hm-expanded.html" xlink:title="D App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="37" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="50" font-size="12">D</text>
                                            </a>
                                            <a xlink:href="w-app-hm-expanded.html" xlink:title="W App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="51" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="63" font-size="12">W</text>
                                            </a>
                                            <a xlink:href="s-app-hm-expanded.html" xlink:title="S App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="64" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="77" font-size="12">S</text>
                                            </a>
                                            <a xlink:href="j-app-hm-expanded.html" xlink:title="J App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="78" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="90" font-size="12">J</text>
                                            </a>
                                            <a xlink:href="r-app-hm-expanded.html" xlink:title="R App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="91" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="103" font-size="12">R</text>
                                            </a>
                                        </g>
                                        <xsl:for-each select="(descendant::app)[position() le 67]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() le 146]">
                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                <xsl:choose>
                                                    <xsl:when test=".[@wit='#I']">
                                                        <rect id="I-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: Unique to I &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                        <rect id="I-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 1 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                        <rect id="I-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 2 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                        <rect id="I-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 3 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                        <rect id="I-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">\
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 4 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                        <rect id="I-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 5 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                        <rect id="I-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 6 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                        <rect id="I-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: All in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                </xsl:choose>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-928, 0)">
                                        <g>
                                            <a xlink:href="i-app-hm-expanded.html" xlink:title="I App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="0" height="13" width="20" opacity="0"/>
                                                <text x="928" y="13" font-size="16">I</text>
                                            </a>
                                            <a xlink:href="o-app-hm-expanded.html" xlink:title="O App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="14" height="13" width="20" opacity="0"/>
                                                <text x="928" y="25" font-size="12">O</text>
                                            </a>
                                            <a xlink:href="c-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="26" height="13" width="20" opacity="0"/>
                                                <text x="928" y="36" font-size="12">C</text>
                                            </a>
                                            <a xlink:href="d-app-hm-expanded.html" xlink:title="D App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="37" height="13" width="20" opacity="0"/>
                                                <text x="928" y="50" font-size="12">D</text>
                                            </a>
                                            <a xlink:href="w-app-hm-expanded.html" xlink:title="W App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="51" height="13" width="20" opacity="0"/>
                                                <text x="928" y="63" font-size="12">W</text>
                                            </a>
                                            <a xlink:href="s-app-hm-expanded.html" xlink:title="S App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="64" height="13" width="20" opacity="0"/>
                                                <text x="928" y="77" font-size="12">S</text>
                                            </a>
                                            <a xlink:href="j-app-hm-expanded.html" xlink:title="J App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="78" height="13" width="20" opacity="0"/>
                                                <text x="928" y="90" font-size="12">J</text>
                                            </a>
                                            <a xlink:href="r-app-hm-expanded.html" xlink:title="R App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="91" height="13" width="20" opacity="0"/>
                                                <text x="928" y="103" font-size="12">R</text>
                                            </a>
                                        </g>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 147 and position() le 299]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 147 and position() le 299]">
                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                <xsl:choose>
                                                    <xsl:when test=".[@wit='#I']">
                                                        <rect id="I-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: Unique to I &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                        <rect id="I-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 1 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                        <rect id="I-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 2 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                        <rect id="I-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 3 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                        <rect id="I-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">\
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 4 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                        <rect id="I-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 5 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                        <rect id="I-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 6 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                        <rect id="I-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: All in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                </xsl:choose>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-1866, 0)">
                                        <g>
                                            <a xlink:href="i-app-hm-expanded.html" xlink:title="I App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="0" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="13" font-size="16">I</text>
                                            </a>
                                            <a xlink:href="o-app-hm-expanded.html" xlink:title="O App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="14" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="25" font-size="12">O</text>
                                            </a>
                                            <a xlink:href="c-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="26" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="36" font-size="12">C</text>
                                            </a>
                                            <a xlink:href="d-app-hm-expanded.html" xlink:title="D App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="37" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="50" font-size="12">D</text>
                                            </a>
                                            <a xlink:href="w-app-hm-expanded.html" xlink:title="W App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="51" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="63" font-size="12">W</text>
                                            </a>
                                            <a xlink:href="s-app-hm-expanded.html" xlink:title="S App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="64" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="77" font-size="12">S</text>
                                            </a>
                                            <a xlink:href="j-app-hm-expanded.html" xlink:title="J App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="78" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="90" font-size="12">J</text>
                                            </a>
                                            <a xlink:href="r-app-hm-expanded.html" xlink:title="R App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="91" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="103" font-size="12">R</text>
                                            </a>
                                        </g>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 300 and position() le 462]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 300 and position() le 462]">
                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                <xsl:choose>
                                                    <xsl:when test=".[@wit='#I']">
                                                        <rect id="I-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: Unique to I &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                        <rect id="I-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 1 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                        <rect id="I-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 2 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                        <rect id="I-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 3 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                        <rect id="I-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">\
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 4 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                        <rect id="I-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 5 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                        <rect id="I-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 6 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                        <rect id="I-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: All in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                </xsl:choose>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-2804, 0)">
                                        <g>
                                            <a xlink:href="i-app-hm-expanded.html" xlink:title="I App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="0" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="13" font-size="16">I</text>
                                            </a>
                                            <a xlink:href="o-app-hm-expanded.html" xlink:title="O App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="14" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="25" font-size="12">O</text>
                                            </a>
                                            <a xlink:href="c-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="26" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="36" font-size="12">C</text>
                                            </a>
                                            <a xlink:href="d-app-hm-expanded.html" xlink:title="D App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="37" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="50" font-size="12">D</text>
                                            </a>
                                            <a xlink:href="w-app-hm-expanded.html" xlink:title="W App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="51" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="63" font-size="12">W</text>
                                            </a>
                                            <a xlink:href="s-app-hm-expanded.html" xlink:title="S App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="64" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="77" font-size="12">S</text>
                                            </a>
                                            <a xlink:href="j-app-hm-expanded.html" xlink:title="J App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="78" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="90" font-size="12">J</text>
                                            </a>
                                            <a xlink:href="r-app-hm-expanded.html" xlink:title="R App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="91" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="103" font-size="12">R</text>
                                            </a>
                                        </g>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 463]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 463]">
                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                <xsl:choose>
                                                    <xsl:when test=".[@wit='#I']">
                                                        <rect id="I-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: Unique to I &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                        <rect id="I-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 1 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                        <rect id="I-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 2 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                        <rect id="I-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 3 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                        <rect id="I-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">\
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 4 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                        <rect id="I-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 5 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                        <rect id="I-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 6 in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                        <rect id="I-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>I App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: All in Iommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ff3f3a">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#ffac3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#ffe83a">
                                                                    <title>Witness J</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#48acff">
                                                                    <title>Witness R</title>
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
                            <div class="table-expanded">
                                <table id="expanded">
                                    <caption>Edition I: Breakdown</caption>
                                    <tr>
                                        <th>Witness</th>
                                        <th>Number</th>
                                        <th>Percent</th>
                                    </tr>
                                    <tr>
                                        <td><b>I</b></td>
                                        <td><b>11</b></td>
                                        <td><b>4.1</b></td>
                                    </tr>
                                    <tr>
                                        <td>O</td>
                                        <td>232</td>
                                        <td>86.6</td>
                                    </tr>
                                    <tr>
                                        <td>C</td>
                                        <td>211</td>
                                        <td>78.7</td>
                                    </tr>
                                    <tr>
                                        <td>D</td>
                                        <td>171</td>
                                        <td>63.8</td>
                                    </tr>
                                    <tr>
                                        <td>W</td>
                                        <td>160</td>
                                        <td>59.7</td>
                                    </tr>
                                    <tr>
                                        <td>S</td>
                                        <td>134</td>
                                        <td>50.0</td>
                                    </tr>
                                    <tr>
                                        <td>J</td>
                                        <td>129</td>
                                        <td>48.1</td>
                                    </tr>
                                    <tr>
                                        <td>R</td>
                                        <td>120</td>
                                        <td>44.8</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document method="xhtml" indent="yes" href="../site/html/comparison/j-app-hm-expanded.html">
            <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                    <link rel="stylesheet" type="text/css" href="../../css/brecon.css"/>
                    <link rel="icon" href="../../img/background/brecon-favicon.png"/>
                    <script src="../../javascript/string-length-hm.js"/>
                    <title>Brecon | J Similarity Expanded</title>
                </head>
                <body>
                    <xsl:comment> SSI line below </xsl:comment>
                    <xsl:comment>#include virtual="../ssi/analysis-similarity-heatmap-expanded-ssi.html" </xsl:comment>
                    <div class="content">
                        <h1>Edition J: Similarity Heat Map Breakdown</h1>
                        <p>On this page, you'll find a graphic that measures the similarities between each witness. The witnesses are listed vertically while the apps are horizontal and a key is held in the navigation bar.
                            The top row is the edition being compared to the other witnesses (this edition's letter is a larger font size). The following rows are for the other editions in order of most to least common. 
                        </p>
                        <div class="varianceGraphic">
                            <div class="svg-expanded">
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(10, 0)">
                                        <g>
                                            <a xlink:href="j-app-hm-expanded.html" xlink:title="J App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="0" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="13" font-size="16">J</text>
                                            </a>
                                            <a xlink:href="s-app-hm-expanded.html" xlink:title="S App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="14" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="25" font-size="12">S</text>
                                            </a>
                                            <a xlink:href="w-app-hm-expanded.html" xlink:title="W App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="26" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="36" font-size="12">W</text>
                                            </a>
                                            <a xlink:href="i-app-hm-expanded.html" xlink:title="I App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="37" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="50" font-size="12">I</text>
                                            </a>
                                            <a xlink:href="c-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="51" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="63" font-size="12">C</text>
                                            </a>
                                            <a xlink:href="o-app-hm-expanded.html" xlink:title="O App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="64" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="77" font-size="12">O</text>
                                            </a>
                                            <a xlink:href="r-app-hm-expanded.html" xlink:title="R App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="78" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="90" font-size="12">R</text>
                                            </a>
                                            <a xlink:href="d-app-hm-expanded.html" xlink:title="D App Similarity Heat Map (Expanded)">
                                                <rect x="-10" y="91" height="13" width="20" opacity="0"/>
                                                <text x="-10" y="103" font-size="12">D</text>
                                            </a>
                                        </g>
                                        <xsl:for-each select="(descendant::app)[position() le 67]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() le 146]">
                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                                <xsl:choose>
                                                    <xsl:when test=".[@wit='#J']">
                                                        <rect id="J-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: Unique to J &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                        <rect id="J-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 1 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                        <rect id="J-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 2 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                        <rect id="J-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 3 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                        <rect id="J-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">\
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 4 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                        <rect id="J-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 5 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                        <rect id="J-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 6 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                        <rect id="J-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: All in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                </xsl:choose>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-928, 0)">
                                        <g>
                                            <a xlink:href="j-app-hm-expanded.html" xlink:title="J App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="0" height="13" width="20" opacity="0"/>
                                                <text x="928" y="13" font-size="16">J</text>
                                            </a>
                                            <a xlink:href="s-app-hm-expanded.html" xlink:title="S App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="14" height="13" width="20" opacity="0"/>
                                                <text x="928" y="25" font-size="12">S</text>
                                            </a>
                                            <a xlink:href="w-app-hm-expanded.html" xlink:title="W App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="26" height="13" width="20" opacity="0"/>
                                                <text x="928" y="36" font-size="12">W</text>
                                            </a>
                                            <a xlink:href="i-app-hm-expanded.html" xlink:title="I App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="37" height="13" width="20" opacity="0"/>
                                                <text x="928" y="50" font-size="12">I</text>
                                            </a>
                                            <a xlink:href="c-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="51" height="13" width="20" opacity="0"/>
                                                <text x="928" y="63" font-size="12">C</text>
                                            </a>
                                            <a xlink:href="o-app-hm-expanded.html" xlink:title="O App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="64" height="13" width="20" opacity="0"/>
                                                <text x="928" y="77" font-size="12">O</text>
                                            </a>
                                            <a xlink:href="r-app-hm-expanded.html" xlink:title="R App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="78" height="13" width="20" opacity="0"/>
                                                <text x="928" y="90" font-size="12">R</text>
                                            </a>
                                            <a xlink:href="d-app-hm-expanded.html" xlink:title="D App Similarity Heat Map (Expanded)">
                                                <rect x="928" y="91" height="13" width="20" opacity="0"/>
                                                <text x="928" y="103" font-size="12">D</text>
                                            </a>
                                        </g>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 147 and position() le 299]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 147 and position() le 299]">
                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                            <xsl:choose>
                                                    <xsl:when test=".[@wit='#J']">
                                                        <rect id="J-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: Unique to J &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                        <rect id="J-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 1 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                        <rect id="J-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 2 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                        <rect id="J-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 3 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                        <rect id="J-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">\
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 4 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                        <rect id="J-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 5 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                        <rect id="J-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 6 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                        <rect id="J-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: All in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                </xsl:choose>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-1866, 0)">
                                        <g>
                                            <a xlink:href="j-app-hm-expanded.html" xlink:title="J App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="0" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="13" font-size="16">J</text>
                                            </a>
                                            <a xlink:href="s-app-hm-expanded.html" xlink:title="S App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="14" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="25" font-size="12">S</text>
                                            </a>
                                            <a xlink:href="w-app-hm-expanded.html" xlink:title="W App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="26" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="36" font-size="12">W</text>
                                            </a>
                                            <a xlink:href="i-app-hm-expanded.html" xlink:title="I App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="37" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="50" font-size="12">I</text>
                                            </a>
                                            <a xlink:href="c-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="51" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="63" font-size="12">C</text>
                                            </a>
                                            <a xlink:href="o-app-hm-expanded.html" xlink:title="O App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="64" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="77" font-size="12">O</text>
                                            </a>
                                            <a xlink:href="r-app-hm-expanded.html" xlink:title="R App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="78" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="90" font-size="12">R</text>
                                            </a>
                                            <a xlink:href="d-app-hm-expanded.html" xlink:title="D App Similarity Heat Map (Expanded)">
                                                <rect x="1866" y="91" height="13" width="20" opacity="0"/>
                                                <text x="1866" y="103" font-size="12">D</text>
                                            </a>
                                        </g>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 300 and position() le 462]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 300 and position() le 462]">
                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                            <xsl:choose>
                                                    <xsl:when test=".[@wit='#J']">
                                                        <rect id="J-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: Unique to J &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                        <rect id="J-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 1 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                        <rect id="J-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 2 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                        <rect id="J-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 3 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                        <rect id="J-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">\
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 4 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                        <rect id="J-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 5 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                        <rect id="J-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 6 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                        <rect id="J-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: All in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                </xsl:choose>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-2804, 0)">
                                        <g>
                                            <a xlink:href="j-app-hm-expanded.html" xlink:title="J App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="0" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="13" font-size="16">J</text>
                                            </a>
                                            <a xlink:href="s-app-hm-expanded.html" xlink:title="S App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="14" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="25" font-size="12">S</text>
                                            </a>
                                            <a xlink:href="w-app-hm-expanded.html" xlink:title="W App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="26" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="36" font-size="12">W</text>
                                            </a>
                                            <a xlink:href="i-app-hm-expanded.html" xlink:title="I App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="37" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="50" font-size="12">I</text>
                                            </a>
                                            <a xlink:href="c-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="51" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="63" font-size="12">C</text>
                                            </a>
                                            <a xlink:href="o-app-hm-expanded.html" xlink:title="O App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="64" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="77" font-size="12">O</text>
                                            </a>
                                            <a xlink:href="r-app-hm-expanded.html" xlink:title="R App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="78" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="90" font-size="12">R</text>
                                            </a>
                                            <a xlink:href="d-app-hm-expanded.html" xlink:title="D App Similarity Heat Map (Expanded)">
                                                <rect x="2804" y="91" height="13" width="20" opacity="0"/>
                                                <text x="2804" y="103" font-size="12">D</text>
                                            </a>
                                        </g>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 463]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 463]">
                                            <xsl:if test=".[@wit[contains(., 'J')]]">
                                            <xsl:choose>
                                                    <xsl:when test=".[@wit='#J']">
                                                        <rect id="J-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: Unique to J &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                        <rect id="J-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 1 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                        <rect id="J-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 2 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                        <rect id="J-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 3 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                        <rect id="J-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">\
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 4 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                        <rect id="J-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 5 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                        <rect id="J-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: 6 in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
                                                                </circle>
                                                            </xsl:if>
                                                        </g>
                                                    </xsl:when>
                                                    <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                        <rect id="J-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                            <title>
                                                                <xsl:text>J App #</xsl:text>
                                                                <xsl:value-of select="preceding::app => count() + 1"/>
                                                                <xsl:text>: All in Jommon &#10;</xsl:text>
                                                                <xsl:value-of select=".//text()"/>
                                                            </title>
                                                        </rect>
                                                        <g>
                                                            <xsl:if test=".[@wit[contains(., 'S')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="20" fill="#6636ff">
                                                                    <title>Witness S</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'W')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="33" fill="#a848ff">
                                                                    <title>Witness W</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'I')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="46" fill="#ffac3a">
                                                                    <title>Witness I</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'C')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="59" fill="#ff3ad4">
                                                                    <title>Witness C</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'O')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="72" fill="#3aff47">
                                                                    <title>Witness O</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'R')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="85" fill="#48acff">
                                                                    <title>Witness R</title>
                                                                </circle>
                                                            </xsl:if>
                                                            <xsl:if test=".[@wit[contains(., 'D')]]">
                                                                <circle r="6" cx="{preceding::app => count() * 14 + 17}" cy="98" fill="#ff3f3a">
                                                                    <title>Witness D</title>
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
                            <div class="table-expanded">
                                <table id="expanded">
                                    <caption>Edition J: Breakdown</caption>
                                    <tr>
                                        <th>Witness</th>
                                        <th>Number</th>
                                        <th>Percent</th>
                                    </tr>
                                    <tr>
                                        <td><b>J</b></td>
                                        <td><b>20</b></td>
                                        <td><b>7.5</b></td>
                                    </tr>
                                    <tr>
                                        <td>S</td>
                                        <td>232</td>
                                        <td>86.6</td>
                                    </tr>
                                    <tr>
                                        <td>W</td>
                                        <td>215</td>
                                        <td>80.2</td>
                                    </tr>
                                    <tr>
                                        <td>I</td>
                                        <td>129</td>
                                        <td>48.1</td>
                                    </tr>
                                    <tr>
                                        <td>C</td>
                                        <td>116</td>
                                        <td>43.3</td>
                                    </tr>
                                    <tr>
                                        <td>O</td>
                                        <td>116</td>
                                        <td>43.3</td>
                                    </tr>
                                    <tr>
                                        <td>R</td>
                                        <td>110</td>
                                        <td>41.0</td>
                                    </tr>
                                    <tr>
                                        <td>D</td>
                                        <td>94</td>
                                        <td>35.1</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
<!--        <xsl:result-document method="xhtml" indent="yes" href="../site/html/comparison/o-app-hm-expanded.html">
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
                                <a href="c-app-hm-expanded.html">C</a>
                                <a href="d-app-hm-expanded.html">D</a>
                                <a href="i-app-hm-expanded.html">I</a>
                                <a href="j-app-hm-expanded.html">J</a>
                                <a href="o-app-hm-expanded.html">O</a>
                                <a href="r-app-hm-expanded.html">R</a>
                                <a href="s-app-hm-expanded.html">S</a>
                                <a href="w-app-hm-expanded.html">W</a>
                                <a href="../analysis/similarity-heat-map.html">Similarity Overview</a>
                            </div>
                        </div>
                        <div class="hmKey">
                            <svg xmlns="http://www.w3.org/2000/svg" width="1400" height="30" viewBox="-15 -10 1450 30">
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
                    </div>
                    <xsl:comment>#include virtual="../ssi/analysis-similarity-heatmap-ssi.html" </xsl:comment>
                    <div class="content">
                        <h1>Edition D: Similarity Heat Map Breakdown</h1>
                        <p>On this page, you'll find a graphic that measures the similarities between each witness. The witnesses are listed vertically while the apps are horizontal and a key is held in the navigation bar.
                            The top row is the edition being compared to the other witnesses (this edition's letter is a larger font size). The following rows are for the other editions in order of most to least common. 
                        </p>
                        <div class="varianceGraphic">
                            <div class="svg-expanded">
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(10, 0)">
                                        <xsl:for-each select="(descendant::app)[position() le 67]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() le 146]">
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-928, 0)">
                                        <xsl:for-each select="(descendant::rdg)[position() ge 146 and position() le 299]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 146 and position() le 299]">
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-1866, 0)">
                                        <xsl:for-each select="(descendant::rdg)[position() ge 300 and position() le 462]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 300 and position() le 462]">
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-1866, 0)">
                                        <xsl:for-each select="(descendant::rdg)[position() ge 463]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 463]">
                                        </xsl:for-each>
                                    </g>
                                </svg>
                            </div>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document method="xhtml" indent="yes" href="../site/html/comparison/r-app-hm-expanded.html">
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
                                <a href="c-app-hm-expanded.html">C</a>
                                <a href="d-app-hm-expanded.html">D</a>
                                <a href="i-app-hm-expanded.html">I</a>
                                <a href="j-app-hm-expanded.html">J</a>
                                <a href="o-app-hm-expanded.html">O</a>
                                <a href="r-app-hm-expanded.html">R</a>
                                <a href="s-app-hm-expanded.html">S</a>
                                <a href="w-app-hm-expanded.html">W</a>
                                <a href="../analysis/similarity-heat-map.html">Similarity Overview</a>
                            </div>
                        </div>
                        <div class="hmKey">
                            <svg xmlns="http://www.w3.org/2000/svg" width="1400" height="30" viewBox="-15 -10 1450 30">
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
                    </div>
                    <xsl:comment>#include virtual="../ssi/analysis-similarity-heatmap-ssi.html" </xsl:comment>
                    <div class="content">
                        <h1>Edition D: Similarity Heat Map Breakdown</h1>
                        <p>On this page, you'll find a graphic that measures the similarities between each witness. The witnesses are listed vertically while the apps are horizontal and a key is held in the navigation bar.
                            The top row is the edition being compared to the other witnesses (this edition's letter is a larger font size). The following rows are for the other editions in order of most to least common. 
                        </p>
                        <div class="varianceGraphic">
                            <div class="svg-expanded">
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(10, 0)">
                                        <xsl:for-each select="(descendant::app)[position() le 67]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() le 146]">
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-928, 0)">
                                        <xsl:for-each select="(descendant::rdg)[position() ge 146 and position() le 299]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 146 and position() le 299]">
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-1866, 0)">
                                        <xsl:for-each select="(descendant::rdg)[position() ge 300 and position() le 462]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 300 and position() le 462]">
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-1866, 0)">
                                        <xsl:for-each select="(descendant::rdg)[position() ge 463]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 463]">
                                        </xsl:for-each>
                                    </g>
                                </svg>
                            </div>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document method="xhtml" indent="yes" href="../site/html/comparison/s-app-hm-expanded.html">
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
                                <a href="c-app-hm-expanded.html">C</a>
                                <a href="d-app-hm-expanded.html">D</a>
                                <a href="i-app-hm-expanded.html">I</a>
                                <a href="j-app-hm-expanded.html">J</a>
                                <a href="o-app-hm-expanded.html">O</a>
                                <a href="r-app-hm-expanded.html">R</a>
                                <a href="s-app-hm-expanded.html">S</a>
                                <a href="w-app-hm-expanded.html">W</a>
                                <a href="../analysis/similarity-heat-map.html">Similarity Overview</a>
                            </div>
                        </div>
                        <div class="hmKey">
                            <svg xmlns="http://www.w3.org/2000/svg" width="1400" height="30" viewBox="-15 -10 1450 30">
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
                    </div>
                    <xsl:comment>#include virtual="../ssi/analysis-similarity-heatmap-ssi.html" </xsl:comment>
                    <div class="content">
                        <h1>Edition D: Similarity Heat Map Breakdown</h1>
                        <p>On this page, you'll find a graphic that measures the similarities between each witness. The witnesses are listed vertically while the apps are horizontal and a key is held in the navigation bar.
                            The top row is the edition being compared to the other witnesses (this edition's letter is a larger font size). The following rows are for the other editions in order of most to least common. 
                        </p>
                        <div class="varianceGraphic">
                            <div class="svg-expanded">
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(10, 0)">
                                        <xsl:for-each select="(descendant::app)[position() le 67]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() le 146]">
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-928, 0)">
                                        <xsl:for-each select="(descendant::rdg)[position() ge 146 and position() le 299]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 146 and position() le 299]">
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-1866, 0)">
                                        <xsl:for-each select="(descendant::rdg)[position() ge 300 and position() le 462]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 300 and position() le 462]">
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-1866, 0)">
                                        <xsl:for-each select="(descendant::rdg)[position() ge 463]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 463]">
                                        </xsl:for-each>
                                    </g>
                                </svg>
                            </div>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document method="xhtml" indent="yes" href="../site/html/comparison/w-app-hm-expanded.html">
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
                                <a href="c-app-hm-expanded.html">C</a>
                                <a href="d-app-hm-expanded.html">D</a>
                                <a href="i-app-hm-expanded.html">I</a>
                                <a href="j-app-hm-expanded.html">J</a>
                                <a href="o-app-hm-expanded.html">O</a>
                                <a href="r-app-hm-expanded.html">R</a>
                                <a href="s-app-hm-expanded.html">S</a>
                                <a href="w-app-hm-expanded.html">W</a>
                                <a href="../analysis/similarity-heat-map.html">Similarity Overview</a>
                            </div>
                        </div>
                        <div class="hmKey">
                            <svg xmlns="http://www.w3.org/2000/svg" width="1400" height="30" viewBox="-15 -10 1450 30">
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
                    </div>
                    <xsl:comment>#include virtual="../ssi/analysis-similarity-heatmap-ssi.html" </xsl:comment>
                    <div class="content">
                        <h1>Edition D: Similarity Heat Map Breakdown</h1>
                        <p>On this page, you'll find a graphic that measures the similarities between each witness. The witnesses are listed vertically while the apps are horizontal and a key is held in the navigation bar.
                            The top row is the edition being compared to the other witnesses (this edition's letter is a larger font size). The following rows are for the other editions in order of most to least common. 
                        </p>
                        <div class="varianceGraphic">
                            <div class="svg-expanded">
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(10, 0)">
                                        <xsl:for-each select="(descendant::app)[position() le 67]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() le 146]">
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-928, 0)">
                                        <xsl:for-each select="(descendant::rdg)[position() ge 146 and position() le 299]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 146 and position() le 299]">
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-1866, 0)">
                                        <xsl:for-each select="(descendant::rdg)[position() ge 300 and position() le 462]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 300 and position() le 462]">
                                        </xsl:for-each>
                                    </g>
                                </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="105" viewBox="0 0 1050 105">
                                    <g transform="translate(-1866, 0)">
                                        <xsl:for-each select="(descendant::rdg)[position() ge 463]">
                                            <rect x="{preceding::app => count() * 14 +10}" y="0" height="105" width="14" stroke="white" fill="black"/>
                                        </xsl:for-each>
                                        <xsl:for-each select="(descendant::rdg)[position() ge 463]">
                                        </xsl:for-each>
                                    </g>
                                </svg>
                            </div>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>-->
    </xsl:template>
</xsl:stylesheet>