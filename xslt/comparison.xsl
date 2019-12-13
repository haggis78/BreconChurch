<?xml version="1.0" encoding="UTF-8"?>
<!-- AMA: The purpose of this XSLT is to output the comparison.html page. -->
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
        <xsl:result-document method="xhtml" indent="yes" href="../site/html/comparison.html">
            <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <link rel="stylesheet" type="text/css" href="../css/brecon.css" />
                    <link rel="icon" href="../img/background/brecon-favicon.png" />
                    <script src="../javascript/comp-checkbox.js" type="text/javascript"></script>
                    <title>Brecon | Comparison</title>
                </head>
                <body>
                    <xsl:comment> SSI line below </xsl:comment>
                    <xsl:comment>#include virtual="ssi/comparison-page-ssi.html"</xsl:comment>
                    <div class="content">
                        <div class="comparison">
                            <div class="container">
                                <xsl:for-each select="$editionColl">
                                    <div id="leftComp{current()}" style="display:none">
                                        <xsl:apply-templates select="root()/descendant::ab">
                                            <xsl:with-param name="currentEd" as="node()" select="current()"/>
                                        </xsl:apply-templates>
                                    </div>
                                </xsl:for-each>
                            </div>
                            <div class="container">
                                <xsl:for-each select="$editionColl">
                                    <div id="centerComp{current()}" style="display:none">
                                        <xsl:apply-templates select="root()/descendant::ab">
                                            <xsl:with-param name="currentEd" as="node()" select="current()"/>
                                        </xsl:apply-templates>
                                    </div>
                                </xsl:for-each>
                            </div>
                            <div class="container">
                                <xsl:for-each select="$editionColl">
                                    <div id="rightComp{current()}" style="display:none">
                                        <xsl:apply-templates select="root()/descendant::ab">
                                            <xsl:with-param name="currentEd" as="node()" select="current()"/>
                                        </xsl:apply-templates>
                                    </div>
                                </xsl:for-each>
                            </div>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    <xsl:template match="root()/descendant::ab">
        <xsl:param name="currentEd"/>
        <xsl:for-each select=".">
            <p>
                <xsl:apply-templates>
                    <xsl:with-param name="currentEd" select="$currentEd" as="node()"/>
                </xsl:apply-templates>
            </p>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="root()/descendant::app">
        <xsl:param name="currentEd"/>
        <xsl:if test="rdg[contains(@wit, $currentEd ! string())]">
            <span class="variances">
                <xsl:value-of select="rdg[@wit[contains(., $currentEd ! string())]]"/>
            </span>
            <br/>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>