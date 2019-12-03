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
    <xsl:variable name="editionColl" as="node()+" select="//altIdentifier/note"/>
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
                    <xsl:for-each select="$editionColl">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="150" height="6000" viewBox="0 0 150 6000">
                            <g transform="translate(0, 50)">
                                <g id="edition{current()}" class="draggable" style="-webkit-user-select: none">
                                    <xsl:for-each select="root()/descendant::ab">
                                        <g>
                                            <rect x="10" y="{(count(preceding::app) * 20) + ((position() - 1) * 50)}" width="130" height="{count(child::app) * 20 + 40}" stroke="black" stroke-width="2" fill="none"/>
                                            <text x="75" y="{(count(preceding::app) * 20) + ((position() - 1) * 50) + 20}" stroke="black" stroke-width="1" text-anchor="middle">AB #<xsl:value-of select="position()"/></text>
                                            <line x1="10" x2="140" y1="{(count(preceding::app) * 20) + ((position() - 1) * 50) + 30}" y2="{(count(preceding::app) * 20) + ((position() - 1) * 50) + 30}" stroke="black" stroke-width="2"/>
                                            <g>
                                                <xsl:for-each select="child::app">
                                                    <text x="75" y="{((count(preceding::app) * 20) + 100) + ((count(preceding::ab) - 1) * 50)}" stroke="black" stroke-width="1" text-anchor="middle">
                                                        <xsl:value-of select="child::rdg ! string-length()"/>
                                                    </text>
                                                </xsl:for-each>
                                            </g>
                                        </g>
                                    </xsl:for-each>
                                </g>
                            </g>
                        </svg>
                    </xsl:for-each>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
</xsl:stylesheet>
