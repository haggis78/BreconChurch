<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:variable name="editionColl" as="node()+" select="descendant::altIdentifier/note"/>
    <xsl:template match="/">
        <xsl:for-each select="$editionColl">
            <xsl:variable name="filename">
                <xsl:value-of select="current()"/>
            </xsl:variable>
            <xsl:result-document method="xhtml" indent="yes" href="../site/html/transcripts/display/display-{$filename}.html">
                <html>
                    <head>
                        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                        <link rel="stylesheet" type="text/css" href="../../../css/brecon.css" />
                        <link rel="icon" href="../../../img/background/brecon-favicon.png"/>
                        <script src="../site/javascript/sticky.js" type="text/javascript"></script>
                        <title>Brecon | Transcript <xsl:value-of select="current()"/></title>
                    </head>
                    <body>
                        <!-- SSI line below-->
                        <!--#include virtual="../../main-ssi.html" -->
                        <div class="content">
                            <h1><xsl:value-of select="(descendant::title)[1]"/></h1>
                            <div class="transcript-about">
                                <xsl:if test="current()/ancestor::bibl">
                                    <xsl:value-of select="current()/ancestor::bibl/text()"/>
                                </xsl:if>
                            </div>
                            <div class="transcript-body">
                                <xsl:apply-templates select="root()/descendant::ab"/>
                            </div>
                        </div>
                    </body>
                </html>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="root()/descendant::ab">
        <xsl:for-each select=".">
            <p>
                <xsl:apply-templates/>
            </p>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="root()/descendant::app">
        <xsl:choose>
            <xsl:when test="child::rdg/@wit[contains(., current())]">
                <span class="variance">
                    <xsl:value-of select="child::rdg[@wit[contains(., current())]]"/>
                </span>
            </xsl:when>
            <xsl:otherwise>
                
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>