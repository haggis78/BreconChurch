<?xml version="1.0" encoding="UTF-8"?>
<!-- AMA: The purpose for this XSLT is to create a display version of each edition as an html file. -->
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
        <xsl:for-each select="$editionColl">
            <xsl:variable name="filename" as="xs:string">
                <xsl:value-of select="current() ! string()"/>
            </xsl:variable>
            <xsl:result-document method="xhtml" indent="yes" href="../site/html/transcripts/display/display-{$filename}.html">
                <html>
                    <head>
                        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                        <link rel="stylesheet" type="text/css" href="../../../css/brecon.css" />
                        <link rel="icon" href="../../../img/background/brecon-favicon.png"/>
                        <script src="../../../js/variance-checkbox.js" type="text/javascript"></script>
                        <title>Brecon | Transcript <xsl:value-of select="current()"/></title>
                    </head>
                    <body>
                        <xsl:comment> SSI line below </xsl:comment>
                        <xsl:comment>#include virtual="../ssi/collation-ssi.html" </xsl:comment>
                        <div class="content">
                            <h1><xsl:value-of select="(root()/descendant::title)[1]"/></h1>
                            <h2>Witness <xsl:value-of select="current()"/></h2>
                            <div class="transcript-about">
                                <xsl:if test="current()/ancestor::bibl">
                                    <xsl:value-of select="current()/ancestor::bibl/text()"/>
                                </xsl:if>
                            </div>
                            <div class="transcript-body">
                                <xsl:apply-templates select="root()/descendant::ab">
                                    <xsl:with-param name="currentEd" as="node()" select="current()"/>
                                </xsl:apply-templates>
                            </div>
                        </div>
                    </body>
                </html>
            </xsl:result-document>
        </xsl:for-each>
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
            <span class="variance">
                <xsl:value-of select="rdg[@wit[contains(., $currentEd ! string())]]"/>
            </span>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>