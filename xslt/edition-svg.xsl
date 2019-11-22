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
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                        <xsl:for-each select="$editionColl">
                            <g id="edition{current()}" class="draggable" style="none">
                                <text x="30" y="0" stroke="black" stroke-width="1" text-anchor="middle">
                                    <xsl:text>Manuscript </xsl:text><xsl:value-of select="current()"/>
                                </text>
                                <image x="22" y="-40" height="21" width="21" xlink:href="../img/background/drag-icon-djb.svg"/>
                                <xsl:apply-templates select="root()/descendant::ab">
                                    <xsl:with-param name="currentEd" as="node()" select="current()"/>
                                </xsl:apply-templates>
                            </g>
                        </xsl:for-each>
                    </svg>
                    
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
</xsl:stylesheet>

