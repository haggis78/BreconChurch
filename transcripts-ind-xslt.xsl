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
    <xsl:template match="/">
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <link rel="stylesheet" type="text/css" href="../brecon.css" />
                <link rel="icon" href="../brecon-favicon.png"/>
                <script src="sticky.js" type="text/javascript"></script>
                <title>Brecon | Transcript W</title>
            </head>
            <body>
                <!-- SSI line below-->
                <!--#include virtual="main-ssi.html" -->
                <div class="content">
                    <h1><xsl:comment>Title of Transcript goes here</xsl:comment></h1>
                    <div class="transcript-about">
                        <p><xsl:comment>Publication info and Source info goes here</xsl:comment></p>
                    </div>
                    <div class="transcript-body">
                        <xsl:apply-templates select="descendant::ab"/>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="descendant::ab">
        <xsl:for-each select=".">
            <p>
                <xsl:apply-templates/>
            </p>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="child::app">
        <xsl:choose>
            <xsl:when test="child::rdg/@wit[contains(., '#W')]">
                <span class="variance">
                    <xsl:value-of select="child::rdg[@wit[contains(., '#W')]]"/>
                </span>
                <br/>
            </xsl:when>
            <xsl:otherwise>
                
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="descendant::ab/text()">
        <xsl:value-of select="."/><br/>
    </xsl:template>

</xsl:stylesheet>