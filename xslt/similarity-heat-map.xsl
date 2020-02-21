<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math" xmlns="http://www.w3.org/1999/xhtml" version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
    <xsl:variable name="currentEdition" as="node()+" select="descendant::altIdentifier/note"/>
    <xsl:template match="/">
        <xsl:result-document method="xhtml" indent="yes" href="../site/html/analysis/similarity-heat-map.html">
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
                    <xsl:comment>#include virtual="../ssi/analysis-similarity-heatmap-ssi.html" </xsl:comment>
                    <div class="content">
                        <h1>App Similarity Heat Map</h1>
                        <p>On this page, you'll find a graphic that measures the similarities between each witness. The witnesses are listed vertically while the apps are horizontal and a key is held in the navigation bar.</p>
                        <div class="varianceGraphic">
                            <div class="svg-expanded">
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="shm1" width="1000" height="115" viewBox="0 0 1050 115">
                                <g transform="translate(10, 0)">
                                <xsl:for-each select="(descendant::rdg)[position() le 146]">
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
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="C-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="C-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="C-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="C-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="C-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="C-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'D')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#D']">
                                                <rect id="D-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to D</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="D-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="D-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="D-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="D-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="D-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="D-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 7 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="D-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'I')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#I']">
                                                <rect id="I-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to I</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="I-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="I-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="I-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="I-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="I-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="I-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="I-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'J')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#J']">
                                                <rect id="J-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to J</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="J-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="J-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="J-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="J-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="J-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="J-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="J-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'O')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#O']">
                                                <rect id="O-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to O</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="O-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="O-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="O-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="O-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="O-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="O-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="O-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'R')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#R']">
                                                <rect id="R-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to R</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="R-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="R-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="R-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="R-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="R-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="R-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="R-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'S')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#S']">
                                                <rect id="S-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to S</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="S-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="S-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="S-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="S-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="S-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="S-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="S-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'W')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#W']">
                                                <rect id="W-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to W</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="W-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="W-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="W-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="W-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="W-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="W-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="W-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                </xsl:for-each>
                                    <g>
                                        <a xlink:href="../comparison/c-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                            <rect x="-10" y="0" height="15" width="20" opacity="0"/>
                                            <text x="-10" y="13" font-size="16">C</text>
                                        </a>
                                        <a xlink:href="../comparison/d-app-hm-expanded.html" xlink:title="D App Similarity Heat Map (Expanded)">
                                            <rect x="-10" y="13" height="15" width="20" opacity="0"/>
                                            <text x="-10" y="27" font-size="16">D</text>
                                        </a>
                                        <a xlink:href="../comparison/i-app-hm-expanded.html" xlink:title="I App Similarity Heat Map (Expanded)">
                                            <rect x="-10" y="27" height="15" width="20" opacity="0"/>
                                            <text x="-10" y="41" font-size="16">I</text>
                                        </a>
                                        <a xlink:href="../comparison/j-app-hm-expanded.html" xlink:title="J App Similarity Heat Map (Expanded)">
                                            <rect x="-10" y="41" height="15" width="20" opacity="0"/>
                                            <text x="-10" y="55" font-size="16">J</text>
                                        </a>
                                        <a xlink:href="../comparison/o-app-hm-expanded.html" xlink:title="O App Similarity Heat Map (Expanded)">
                                            <rect x="-10" y="55" height="15" width="20" opacity="0"/>
                                            <text x="-10" y="69" font-size="16">O</text>
                                        </a>
                                        <a xlink:href="../comparison/r-app-hm-expanded.html" xlink:title="R App Similarity Heat Map (Expanded)">
                                            <rect x="-10" y="69" height="15" width="20" opacity="0"/>
                                            <text x="-10" y="83" font-size="16">R</text>
                                        </a>
                                        <a xlink:href="../comparison/s-app-hm-expanded.html" xlink:title="S App Similarity Heat Map (Expanded)">
                                            <rect x="-10" y="83" height="15" width="20" opacity="0"/>
                                            <text x="-10" y="97" font-size="16">S</text>
                                        </a>
                                        <a xlink:href="../comparison/w-app-hm-expanded.html" xlink:title="W App Similarity Heat Map (Expanded)">
                                            <rect x="-10" y="97" height="15" width="20" opacity="0"/>
                                            <text x="-10" y="111" font-size="16">W</text>
                                        </a>
                                    </g>
                                </g>
                            </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="slhm2" width="1000" height="115" viewBox="0 0 1050 115">
                                <g transform="translate(-928, 0)">
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
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="C-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="C-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="C-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="C-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="C-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="C-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'D')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#D']">
                                                <rect id="D-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to D</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="D-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="D-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="D-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="D-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="D-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="D-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 7 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="D-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'I')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#I']">
                                                <rect id="I-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to I</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="I-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="I-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="I-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="I-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="I-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="I-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="I-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'J')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#J']">
                                                <rect id="J-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to J</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="J-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="J-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="J-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="J-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="J-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="J-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="J-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'O')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#O']">
                                                <rect id="O-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to O</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="O-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="O-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="O-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="O-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="O-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="O-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="O-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'R')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#R']">
                                                <rect id="R-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to R</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="R-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="R-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="R-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="R-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="R-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="R-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="R-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'S')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#S']">
                                                <rect id="S-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to S</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="S-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="S-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="S-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="S-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="S-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="S-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="S-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'W')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#W']">
                                                <rect id="W-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to W</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="W-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="W-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="W-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="W-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="W-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="W-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="W-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                </xsl:for-each>
                                    <g>
                                        <a xlink:href="../comparison/c-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                            <rect x="928" y="0" height="15" width="20" opacity="0"/>
                                            <text x="928" y="13" font-size="16">C</text>
                                        </a>
                                        <a xlink:href="../comparison/d-app-hm-expanded.html" xlink:title="D App Similarity Heat Map (Expanded)">
                                            <rect x="928" y="13" height="15" width="20" opacity="0"/>
                                            <text x="928" y="27" font-size="16">D</text>
                                        </a>
                                        <a xlink:href="../comparison/i-app-hm-expanded.html" xlink:title="I App Similarity Heat Map (Expanded)">
                                            <rect x="928" y="27" height="15" width="20" opacity="0"/>
                                            <text x="928" y="41" font-size="16">I</text>
                                        </a>
                                        <a xlink:href="../comparison/j-app-hm-expanded.html" xlink:title="J App Similarity Heat Map (Expanded)">
                                            <rect x="928" y="41" height="15" width="20" opacity="0"/>
                                            <text x="928" y="55" font-size="16">J</text>
                                        </a>
                                        <a xlink:href="../comparison/o-app-hm-expanded.html" xlink:title="O App Similarity Heat Map (Expanded)">
                                            <rect x="928" y="55" height="15" width="20" opacity="0"/>
                                            <text x="928" y="69" font-size="16">O</text>
                                        </a>
                                        <a xlink:href="../comparison/r-app-hm-expanded.html" xlink:title="R App Similarity Heat Map (Expanded)">
                                            <rect x="928" y="69" height="15" width="20" opacity="0"/>
                                            <text x="928" y="83" font-size="16">R</text>
                                        </a>
                                        <a xlink:href="../comparison/s-app-hm-expanded.html" xlink:title="S App Similarity Heat Map (Expanded)">
                                            <rect x="928" y="83" height="15" width="20" opacity="0"/>
                                            <text x="928" y="97" font-size="16">S</text>
                                        </a>
                                        <a xlink:href="../comparison/w-app-hm-expanded.html" xlink:title="W App Similarity Heat Map (Expanded)">
                                            <rect x="928" y="97" height="15" width="20" opacity="0"/>
                                            <text x="928" y="111" font-size="16">W</text>
                                        </a>
                                    </g>
                                </g>
                            </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="slhm3" width="1000" height="115" viewBox="0 0 1050 115">
                                <g transform="translate(-1866, 0)">
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
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="C-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="C-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="C-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="C-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="C-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="C-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'D')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#D']">
                                                <rect id="D-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to D</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="D-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="D-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="D-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="D-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="D-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="D-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 7 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="D-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'I')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#I']">
                                                <rect id="I-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to I</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="I-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="I-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="I-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="I-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="I-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="I-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="I-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'J')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#J']">
                                                <rect id="J-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to J</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="J-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="J-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="J-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="J-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="J-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="J-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="J-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'O')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#O']">
                                                <rect id="O-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to O</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="O-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="O-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="O-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="O-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="O-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="O-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="O-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'R')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#R']">
                                                <rect id="R-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to R</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="R-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="R-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="R-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="R-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="R-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="R-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="R-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'S')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#S']">
                                                <rect id="S-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to S</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="S-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="S-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="S-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="S-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="S-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="S-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="S-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'W')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#W']">
                                                <rect id="W-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to W</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="W-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="W-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="W-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="W-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="W-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="W-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="W-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                </xsl:for-each>
                                    <g>
                                        <a xlink:href="../comparison/c-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                            <rect x="1866" y="0" height="15" width="20" opacity="0"/>
                                            <text x="1866" y="13" font-size="16">C</text>
                                        </a>
                                        <a xlink:href="../comparison/d-app-hm-expanded.html" xlink:title="D App Similarity Heat Map (Expanded)">
                                            <rect x="1866" y="13" height="15" width="20" opacity="0"/>
                                            <text x="1866" y="27" font-size="16">D</text>
                                        </a>
                                        <a xlink:href="../comparison/i-app-hm-expanded.html" xlink:title="I App Similarity Heat Map (Expanded)">
                                            <rect x="1866" y="27" height="15" width="20" opacity="0"/>
                                            <text x="1866" y="41" font-size="16">I</text>
                                        </a>
                                        <a xlink:href="../comparison/j-app-hm-expanded.html" xlink:title="J App Similarity Heat Map (Expanded)">
                                            <rect x="1866" y="41" height="15" width="20" opacity="0"/>
                                            <text x="1866" y="55" font-size="16">J</text>
                                        </a>
                                        <a xlink:href="../comparison/o-app-hm-expanded.html" xlink:title="O App Similarity Heat Map (Expanded)">
                                            <rect x="1866" y="55" height="15" width="20" opacity="0"/>
                                            <text x="1866" y="69" font-size="16">O</text>
                                        </a>
                                        <a xlink:href="../comparison/r-app-hm-expanded.html" xlink:title="R App Similarity Heat Map (Expanded)">
                                            <rect x="1866" y="69" height="15" width="20" opacity="0"/>
                                            <text x="1866" y="83" font-size="16">R</text>
                                        </a>
                                        <a xlink:href="../comparison/s-app-hm-expanded.html" xlink:title="S App Similarity Heat Map (Expanded)">
                                            <rect x="1866" y="83" height="15" width="20" opacity="0"/>
                                            <text x="1866" y="97" font-size="16">S</text>
                                        </a>
                                        <a xlink:href="../comparison/w-app-hm-expanded.html" xlink:title="W App Similarity Heat Map (Expanded)">
                                            <rect x="1866" y="97" height="15" width="20" opacity="0"/>
                                            <text x="1866" y="111" font-size="16">W</text>
                                        </a>
                                    </g>
                                </g>
                            </svg>
                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="slhm4" width="1000" height="115" viewBox="0 0 1050 115">
                                <g transform="translate(-2804, 0)">
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
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="C-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="C-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="C-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="C-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="C-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="C-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="0" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>C App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'D')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#D']">
                                                <rect id="D-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to D</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="D-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="D-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="D-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="D-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="D-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="D-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 7 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="D-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="14" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>D App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'I')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#I']">
                                                <rect id="I-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to I</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="I-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="I-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="I-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="I-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="I-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="I-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="I-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="28" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>I App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'J')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#J']">
                                                <rect id="J-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to J</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="J-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="J-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="J-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="J-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="J-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="J-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="J-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="42" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>J App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'O')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#O']">
                                                <rect id="O-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to O</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="O-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="O-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="O-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="O-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="O-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="O-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="O-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="56" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>O App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'R')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#R']">
                                                <rect id="R-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to R</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="R-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="R-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="R-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="R-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="R-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="R-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="R-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="70" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>R App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'S')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#S']">
                                                <rect id="S-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to S</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="S-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="S-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="S-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="S-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="S-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 5 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="S-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="S-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="84" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>S App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test=".[@wit[contains(., 'W')]]">
                                        <xsl:choose>
                                            <xsl:when test=".[@wit='#W']">
                                                <rect id="W-1-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: Unique to W</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^#\w #\w$')]]">
                                                <rect id="W-2-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 1 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){2}#\w$')]]">
                                                <rect id="W-3-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 2 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){3}#\w$')]]">
                                                <rect id="W-4-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 3 in common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){4}#\w$')]]">
                                                <rect id="W-5-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 4 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){5}#\w$')]]">
                                                <rect id="W-6-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){6}#\w$')]]">
                                                <rect id="W-7-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: 6 in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                            <xsl:when test=".[@wit[matches(., '^(#\w ){7}#\w$')]]">
                                                <rect id="W-8-{preceding::app => count()}" x="{preceding::app => count() * 14 + 10}" y="98" width="14" height="14" stroke="white">
                                                    <title>
                                                        <xsl:text>W App #</xsl:text>
                                                        <xsl:value-of select="preceding::app => count() + 1"/>
                                                        <xsl:text>: All in Common</xsl:text>
                                                    </title>
                                                </rect>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:if>
                                </xsl:for-each>
                                    <g>
                                        <a xlink:href="../comparison/c-app-hm-expanded.html" xlink:title="C App Similarity Heat Map (Expanded)">
                                            <rect x="2804" y="0" height="15" width="20" opacity="0"/>
                                            <text x="2804" y="13" font-size="16">C</text>
                                        </a>
                                        <a xlink:href="../comparison/d-app-hm-expanded.html" xlink:title="D App Similarity Heat Map (Expanded)">
                                            <rect x="2804" y="13" height="15" width="20" opacity="0"/>
                                            <text x="2804" y="27" font-size="16">D</text>
                                        </a>
                                        <a xlink:href="../comparison/i-app-hm-expanded.html" xlink:title="I App Similarity Heat Map (Expanded)">
                                            <rect x="2804" y="27" height="15" width="20" opacity="0"/>
                                            <text x="2804" y="41" font-size="16">I</text>
                                        </a>
                                        <a xlink:href="../comparison/j-app-hm-expanded.html" xlink:title="J App Similarity Heat Map (Expanded)">
                                            <rect x="2804" y="41" height="15" width="20" opacity="0"/>
                                            <text x="2804" y="55" font-size="16">J</text>
                                        </a>
                                        <a xlink:href="../comparison/o-app-hm-expanded.html" xlink:title="O App Similarity Heat Map (Expanded)">
                                            <rect x="2804" y="55" height="15" width="20" opacity="0"/>
                                            <text x="2804" y="69" font-size="16">O</text>
                                        </a>
                                        <a xlink:href="../comparison/r-app-hm-expanded.html" xlink:title="R App Similarity Heat Map (Expanded)">
                                            <rect x="2804" y="69" height="15" width="20" opacity="0"/>
                                            <text x="2804" y="83" font-size="16">R</text>
                                        </a>
                                        <a xlink:href="../comparison/s-app-hm-expanded.html" xlink:title="S App Similarity Heat Map (Expanded)">
                                            <rect x="2804" y="83" height="15" width="20" opacity="0"/>
                                            <text x="2804" y="97" font-size="16">S</text>
                                        </a>
                                        <a xlink:href="../comparison/w-app-hm-expanded.html" xlink:title="W App Similarity Heat Map (Expanded)">
                                            <rect x="2804" y="97" height="15" width="20" opacity="0"/>
                                            <text x="2804" y="111" font-size="16">W</text>
                                        </a>
                                    </g>
                                </g>
                            </svg>
                            </div>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
</xsl:stylesheet>