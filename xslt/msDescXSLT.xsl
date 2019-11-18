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
                <link rel="stylesheet" type="text/css" href="brecon.css"/>
                <title>Brecon Project: Texts</title></head>
            <body>
                <h2>Sources:</h2>
                <xsl:apply-templates select="descendant::msDesc"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="msDesc">
        <h3><xsl:value-of select="@xml:id"/> : <xsl:value-of select="descendant::idno"/></h3>
        <h4><xsl:apply-templates select="descendant::repository"/>, <xsl:apply-templates select="descendant::settlement"/></h4>
        <p><b>Physical Description:</b></p><p><xsl:apply-templates select="descendant::physDesc"/></p>
        <p><b>Original Date of Manuscripts:</b></p> <p><xsl:apply-templates select="descendant::origDate"/></p>
        <p><b>Source Description:</b></p><p><xsl:apply-templates select="descendant::provenance"/></p>
    </xsl:template>
</xsl:stylesheet>