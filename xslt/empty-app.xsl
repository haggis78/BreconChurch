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
        <xsl:result-document method="xhtml" indent="yes" href="../site/html/analysis/empty-app.html">
            <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                    <link rel="stylesheet" type="text/css" href="../../css/brecon.css"/>
                    <link rel="icon" href="../../img/background/brecon-favicon.png"/>
                    <script src="../../javascript/network.js"/>
                    <title>Brecon | Network Analysis</title>
                </head>
                <body>
                    <div class="content">
                        <div class="varianceGraphic">
                            <svg xmlns="http://www.w3.org/2000/svg" width="1400" height="220" viewBox="-20 0 1450 220">
                                <line x1="4" x2="4" y1="20" y2="181" stroke="black" stroke-width="2"/>
                                <line x1="3" x2="1348" y1="181" y2="181" stroke="black" stroke-width="2"/>
                                <text x="103" y="200" text-anchor="middle">20</text>
                                <text x="203" y="200" text-anchor="middle">40</text>
                                <text x="303" y="200" text-anchor="middle">60</text>
                                <text x="403" y="200" text-anchor="middle">80</text>
                                <text x="503" y="200" text-anchor="middle">100</text>
                                <text x="603" y="200" text-anchor="middle">120</text>
                                <text x="703" y="200" text-anchor="middle">140</text>
                                <text x="803" y="200" text-anchor="middle">160</text>
                                <text x="903" y="200" text-anchor="middle">180</text>
                                <text x="1003" y="200" text-anchor="middle">200</text>
                                <text x="1103" y="200" text-anchor="middle">220</text>
                                <text x="1203" y="200" text-anchor="middle">240</text>
                                <text x="1303" y="200" text-anchor="middle">260</text>
                                <xsl:for-each select="descendant::ab">
                                    <xsl:if test="descendant::rdg[@wit[contains(., 'C')]]">
                                        <rect width="1339" height="20" x="5" y="20" opacity="1" fill="#ff3ad4"/>
                                    </xsl:if>
                                    <xsl:if test="descendant::rdg[@wit[contains(., 'D')]]">
                                        <rect width="1339" height="20" x="5" y="40" opacity="1" fill="#ff3f3a"/>
                                    </xsl:if>
                                    <xsl:if test="descendant::rdg[@wit[contains(., 'I')]]">
                                        <rect width="1339" height="20" x="5" y="60" opacity="1" fill="#ffac3a"/>
                                    </xsl:if>
                                    <xsl:if test="descendant::rdg[@wit[contains(., 'J')]]">
                                        <rect width="1339" height="20" x="5" y="80" opacity="1" fill="#ffe83a"/>
                                    </xsl:if>
                                    <xsl:if test="descendant::rdg[@wit[contains(., 'O')]]">
                                        <rect width="1339" height="20" x="5" y="100" opacity="1" fill="#ff3ad4"/>
                                    </xsl:if>
                                    <xsl:if test="descendant::rdg[@wit[contains(., 'R')]]">
                                        <rect width="1339" height="20" x="5" y="120" opacity="1" fill="#48acff"/>
                                    </xsl:if>
                                    <xsl:if test="descendant::rdg[@wit[contains(., 'S')]]">
                                        <rect width="1339" height="20" x="5" y="140" opacity="1" fill="#6636ff"/>
                                    </xsl:if>
                                    <xsl:if test="descendant::rdg[@wit[contains(., 'W')]]">
                                        <rect width="1339" height="20" x="5" y="160" opacity="1" fill="#a848ff"/>
                                    </xsl:if>
                                </xsl:for-each>
                                <xsl:for-each select="descendant::app">
                                    <xsl:if test="child::rdg[@wit[contains(., 'C')]]">
                                        <xsl:choose>
                                            <xsl:when test="child::rdg[@wit[contains(., 'C')]][matches(., '.')]"/>
                                            <xsl:otherwise>
                                                <rect x="{position() * 5}" y="20" width="5.3" height="20" opacity="1" fill="#ffe6b3"/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test="child::rdg[@wit[contains(., 'D')]]">
                                        <xsl:choose>
                                            <xsl:when test="child::rdg[@wit[contains(., 'D')]][matches(., '.')]"/>
                                            <xsl:otherwise>
                                                <rect x="{position() * 5}" y="40" width="5.3" height="20" opacity="1" fill="#ffe6b3"/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test="child::rdg[@wit[contains(., 'I')]]">
                                        <xsl:choose>
                                            <xsl:when test="child::rdg[@wit[contains(., 'I')]][matches(., '.')]"/>
                                            <xsl:otherwise>
                                                <rect x="{position() * 5}" y="60" width="5.3" height="20" opacity="1" fill="#ffe6b3"/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test="child::rdg[@wit[contains(., 'J')]]">
                                        <xsl:choose>
                                            <xsl:when test="child::rdg[@wit[contains(., 'J')]][matches(., '.')]"/>
                                            <xsl:otherwise>
                                                <rect x="{position() * 5}" y="80" width="5.3" height="20" opacity="1" fill="#ffe6b3"/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test="child::rdg[@wit[contains(., 'O')]]">
                                        <xsl:choose>
                                            <xsl:when test="child::rdg[@wit[contains(., 'O')]][matches(., '.')]"/>
                                            <xsl:otherwise>
                                                <rect x="{position() * 5}" y="100" width="5.3" height="20" opacity="1" fill="#ffe6b3"/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test="child::rdg[@wit[contains(., 'R')]]">
                                        <xsl:choose>
                                            <xsl:when test="child::rdg[@wit[contains(., 'R')]][matches(., '.')]"/>
                                            <xsl:otherwise>
                                                <rect x="{position() * 5}" y="120" width="5.3" height="20" opacity="1" fill="#ffe6b3"/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test="child::rdg[@wit[contains(., 'S')]]">
                                        <xsl:choose>
                                            <xsl:when test="child::rdg[@wit[contains(., 'S')]][matches(., '.')]"/>
                                            <xsl:otherwise>
                                                <rect x="{position() * 5}" y="140" width="5.3" height="20" opacity="1" fill="#ffe6b3"/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:if>
                                    <xsl:if test="child::rdg[@wit[contains(., 'W')]]">
                                        <xsl:choose>
                                            <xsl:when test="child::rdg[@wit[contains(., 'W')]][matches(., '.')]"/>
                                            <xsl:otherwise>
                                                <rect x="{position() * 5}" y="160" width="5.3" height="20" opacity="1" fill="#ffe6b3"/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:if>
                                </xsl:for-each>
                                <text x="-20" y="35">C</text>
                                <text x="-20" y="55">D</text>
                                <text x="-20" y="75">I</text>
                                <text x="-20" y="95">J</text>
                                <text x="-20" y="115">O</text>
                                <text x="-20" y="135">R</text>
                                <text x="-20" y="155">S</text>
                                <text x="-20" y="175">W</text>
                                <line x1="103" x2="103" y1="176" y2="186" stroke="black" stroke-width="5"/>
                                <line x1="203" x2="203" y1="176" y2="186" stroke="black" stroke-width="5"/>
                                <line x1="303" x2="303" y1="176" y2="186" stroke="black" stroke-width="5"/>
                                <line x1="403" x2="403" y1="176" y2="186" stroke="black" stroke-width="5"/>
                                <line x1="503" x2="503" y1="176" y2="186" stroke="black" stroke-width="5"/>
                                <line x1="603" x2="603" y1="176" y2="186" stroke="black" stroke-width="5"/>
                                <line x1="703" x2="703" y1="176" y2="186" stroke="black" stroke-width="5"/>
                                <line x1="803" x2="803" y1="176" y2="186" stroke="black" stroke-width="5"/>
                                <line x1="903" x2="903" y1="176" y2="186" stroke="black" stroke-width="5"/>
                                <line x1="1003" x2="1003" y1="176" y2="186" stroke="black" stroke-width="5"/>
                                <line x1="1103" x2="1103" y1="176" y2="186" stroke="black" stroke-width="5"/>
                                <line x1="1203" x2="1203" y1="176" y2="186" stroke="black" stroke-width="5"/>
                                <line x1="1303" x2="1303" y1="176" y2="186" stroke="black" stroke-width="5"/>
                                <xsl:for-each select="descendant::ab">
                                    <rect x="{(preceding::app => count()) * 5 + 4}" y="20" opacity="1" width="{(child::app => count()) * 5}" height="160" stroke-width="1" fill-opacity="0" stroke="black">
                                        <title>
                                            <xsl:text>Block #</xsl:text>
                                            <xsl:value-of select="position()"/>
                                        </title>
                                    </rect>
                                </xsl:for-each>
                            </svg>
                            <xsl:for-each select="descendant::ab">
                                <svg xmlns="http://www.w3.org/2000/svg" width="3000" height="200">
                                    <g transform="translate(0, 20)">
                                        <text x="60" y="-5" text-anchor="middle">Block #<xsl:value-of select="position()"/></text>
                                        <xsl:for-each select="child::app">
                                            <xsl:if test="child::rdg[@wit[contains(., 'C')]]">
                                                <xsl:choose>
                                                    <xsl:when test="child::rdg[@wit[contains(., 'C')]][matches(., '.')]">
                                                        <rect x="{position() * 10 + 20}" y="0" width="20" height="20" opacity="1" fill="#ff3ad4"/>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <rect x="{position() * 10 + 20}" y="0" width="20" height="20" opacity="1" fill="black"/>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:if>
                                            <xsl:if test="child::rdg[@wit[contains(., 'D')]]">
                                                <xsl:choose>
                                                    <xsl:when test="child::rdg[@wit[contains(., 'D')]][matches(., '.')]">
                                                        <rect x="{position() * 10 + 20}" y="20" width="20" height="20" opacity="1" fill="#ff3f3a"/>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <rect x="{position() * 10 + 20}" y="20" width="20" height="20" opacity="1" fill="black"/>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:if>
                                            <xsl:if test="child::rdg[@wit[contains(., 'I')]]">
                                                <xsl:choose>
                                                    <xsl:when test="child::rdg[@wit[contains(., 'I')]][matches(., '.')]">
                                                        <rect x="{position() * 10 + 20}" y="40" width="20" height="20" opacity="1" fill="#ffe83a"/>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <rect x="{position() * 10 + 20}" y="40" width="20" height="20" opacity="1" fill="black"/>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:if>
                                            <xsl:if test="child::rdg[@wit[contains(., 'J')]]">
                                                <xsl:choose>
                                                    <xsl:when test="child::rdg[@wit[contains(., 'J')]][matches(., '.')]">
                                                        <rect x="{position() * 10 + 20}" y="60" width="20" height="20" opacity="1" fill="#ff3ad4"/>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <rect x="{position() * 10 + 20}" y="60" width="20" height="20" opacity="1" fill="black"/>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:if>
                                            <xsl:if test="child::rdg[@wit[contains(., 'O')]]">
                                                <xsl:choose>
                                                    <xsl:when test="child::rdg[@wit[contains(., 'O')]][matches(., '.')]">
                                                        <rect x="{position() * 10 + 20}" y="80" width="20" height="20" opacity="1" fill="#3aff47"/>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <rect x="{position() * 10 + 20}" y="80" width="20" height="20" opacity="1" fill="black"/>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:if>
                                            <xsl:if test="child::rdg[@wit[contains(., 'R')]]">
                                                <xsl:choose>
                                                    <xsl:when test="child::rdg[@wit[contains(., 'R')]][matches(., '.')]">
                                                        <rect x="{position() * 10 + 20}" y="100" width="20" height="20" opacity="1" fill="#48acff"/>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <rect x="{position() * 10 + 20}" y="100" width="20" height="20" opacity="1" fill="black"/>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:if>
                                            <xsl:if test="child::rdg[@wit[contains(., 'S')]]">
                                                <xsl:choose>
                                                    <xsl:when test="child::rdg[@wit[contains(., 'S')]][matches(., '.')]">
                                                        <rect x="{position() * 10 + 20}" y="120" width="20" height="20" opacity="1" fill="#6636ff"/>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <rect x="{position() * 10 + 20}" y="120" width="20" height="20" opacity="1" fill="black"/>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:if>
                                            <xsl:if test="child::rdg[@wit[contains(., 'W')]]">
                                                <xsl:choose>
                                                    <xsl:when test="child::rdg[@wit[contains(., 'W')]][matches(., '.')]">
                                                        <rect x="{position() * 10 + 20}" y="140" width="20" height="20" opacity="1" fill="#a848ff"/>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <rect x="{position() * 10 + 20}" y="140" width="20" height="20" opacity="1" fill="black"/>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:if>
                                        </xsl:for-each>
                                        <text x="10" y="17" >C</text>
                                        <text x="10" y="37" >D</text>
                                        <text x="10" y="57" >I</text>
                                        <text x="10" y="77" >J</text>
                                        <text x="10" y="97" >O</text>
                                        <text x="10" y="117" >R</text>
                                        <text x="10" y="137" >D</text>
                                        <text x="9" y="157" >W</text>
                                    </g>
                                </svg>
                            </xsl:for-each>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
</xsl:stylesheet>