<?xml version="1.0" encoding="UTF-8"?>
<!-- AMA: The purpose of this XSLT is to output the an svg page that shows the variances between all editions page. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:variable name="currentEdition" as="node()+" select="descendant::note"/>
    <xsl:template match="/">
        <xsl:result-document method="xhtml" indent="yes" href="../site/html/edition-svg.html">
            <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <link rel="stylesheet" type="text/css" href="../css/brecon.css" />
                    <link rel="icon" href="../img/background/brecon-favicon.png" />
                    <script src="../javascript/comp-checkbox.js" type="text/javascript"></script>
                    <title>Brecon | Edition SVG</title>
                </head>
                <body>
                    <xsl:comment> SSI line below </xsl:comment>
                    <xsl:comment>#include virtual="ssi/ab-svg-ssi.html" </xsl:comment>
                    <div class="content">
                        <div class="ab-svg">
                            <xsl:for-each select="$currentEdition">
                                <xsl:sort order="ascending"/>
                                <xsl:variable name="CE" as="node()" select="current()"/>
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="150" height="6900" viewBox="0 0 150 6900">
                                    <g transform="translate(0, 40)">
                                        <g id="edition{$CE}" class="draggable" style="-webkit-user-select: none">
                                            <xsl:for-each select="//ab[descendant::rdg/@wit[contains(., current())]]">
                                                <g>
                                                    <rect x="10" y="{(count(preceding::app) * 20) + ((position() - 1) * 80)}" width="130" height="{count(child::app) * 20 + 70}" fill="none" stroke="black" stroke-width="2"/>
                                                    <text x="75" y="{(count(preceding::app) * 20) + ((position() - 1) * 80) + 20}" text-anchor="middle">AB #<xsl:value-of select="position()"/></text>
                                                    <line x1="10" x2="140" y1="{(count(preceding::app) * 20) + ((position() - 1) * 80) + 30}" y2="{(count(preceding::app) * 20) + ((position() - 1) * 80) + 30}" stroke-width="2" stroke="black"/>
                                                    <line x1="10" x2="140" y1="{(count(preceding::app) * 20) + ((position() - 1) * 80) + 60}" y2="{(count(preceding::app) * 20) + ((position() - 1) * 80) + 60}" stroke-width="2" stroke="black"/>
                                                    <g>
                                                        <text x="75" y="{((count(preceding::app) * 20) + 130) + ((count(preceding::ab) - 1) * 80)}" text-anchor="middle">
                                                            <xsl:value-of select="(current()/text() ! normalize-space() ! tokenize(., ' ') => count()) + (current()/descendant::rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())"/>
                                                        </text>
                                                        <xsl:apply-templates select="child::app[child::rdg[@wit[contains(., $CE)]]]">
                                                            <xsl:with-param name="CE" as="node()" select="$CE"/>
                                                        </xsl:apply-templates>
                                                    </g>
                                                </g>
                                            </xsl:for-each>
                                        </g>
                                    </g>
                                </svg>
                            </xsl:for-each>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    <xsl:template match="app">
        <xsl:param name="CE"/>
        <text x="75" y="{((count(preceding::app) * 20) + 160) + ((count(preceding::ab) - 1) * 80)}" text-anchor="middle">
            <xsl:value-of select="child::rdg[@wit[contains(., $CE)]] ! string-length()"/>
        </text>
    </xsl:template>
</xsl:stylesheet>
