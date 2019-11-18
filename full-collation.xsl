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
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="/">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                    <link rel="stylesheet" type="text/css" href="../brecon.css" />
                    <link rel="icon" href="../brecon-favicon.png"/>
                    <script src="sticky.js" type="text/javascript"></script>
                    <title>Brecon | Transcript 
                        <xsl:choose>
                            <xsl:when test="child::rdg/@wit[contains(., '#C')]">
                                <xsl:text>C</xsl:text>
                            </xsl:when>
                            <xsl:when test="child::rdg/@wit[contains(., '#I')]">
                                <xsl:text>I</xsl:text>
                            </xsl:when>
                            <xsl:when test="child::rdg/@wit[contains(., '#J')]">
                                <xsl:text>J</xsl:text>
                            </xsl:when>
                            <xsl:when test="child::rdg/@wit[contains(., '#R')]">
                                <xsl:text>R</xsl:text>
                            </xsl:when>
                            <xsl:when test="child::rdg/@wit[contains(., '#S')]">
                                <xsl:text>S</xsl:text>
                            </xsl:when>
                            <xsl:when test="child::rdg/@wit[contains(., '#W')]">
                                <xsl:text>W</xsl:text>
                            </xsl:when>
                        </xsl:choose>
                    </title>
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
                            <xsl:choose>
                                <xsl:when test="child::rdg/@wit[contains(., '#C')]">
                                    <xsl:apply-templates select="descendant::ab" mode="disp-transcript-c"/>
                                </xsl:when>
                                <xsl:when test="child::rdg/@wit[contains(., '#I')]">
                                    <xsl:apply-templates select="descendant::ab" mode="disp-transcript-i"/>
                                </xsl:when>
                                <xsl:when test="child::rdg/@wit[contains(., '#J')]">
                                    <xsl:apply-templates select="descendant::ab" mode="disp-transcript-j"/>
                                </xsl:when>
                                <xsl:when test="child::rdg/@wit[contains(., '#R')]">
                                    <xsl:apply-templates select="descendant::ab" mode="disp-transcript-r"/>
                                </xsl:when>
                                <xsl:when test="child::rdg/@wit[contains(., '#S')]">
                                    <xsl:apply-templates select="descendant::ab" mode="disp-transcript-s"/>
                                </xsl:when>
                                <xsl:when test="child::rdg/@wit[contains(., '#W')]">
                                    <xsl:apply-templates select="descendant::ab" mode="disp-transcript-w"/>
                                </xsl:when>
                            </xsl:choose>
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
    <xsl:template match="child::app" mode="disp-transcript-c">
        <xsl:choose>
            <xsl:when test="child::rdg/@wit[contains(., '#C')]">
                <span class="variance">
                    <xsl:value-of select="child::rdg[@wit[contains(., '#C')]]"/>
                </span>
            </xsl:when>
            <xsl:otherwise>
                
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="child::app" mode="disp-transcript-i">
        <xsl:choose>
            <xsl:when test="child::rdg/@wit[contains(., '#I')]">
                <span class="variance">
                    <xsl:value-of select="child::rdg[@wit[contains(., '#I')]]"/>
                </span>
            </xsl:when>
            <xsl:otherwise>
                
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="child::app" mode="disp-transcript-j">
        <xsl:choose>
            <xsl:when test="child::rdg/@wit[contains(., '#J')]">
                <span class="variance">
                    <xsl:value-of select="child::rdg[@wit[contains(., '#J')]]"/>
                </span>
            </xsl:when>
            <xsl:otherwise>
                
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="child::app" mode="disp-transcript-r">
        <xsl:choose>
            <xsl:when test="child::rdg/@wit[contains(., '#R')]">
                <span class="variance">
                    <xsl:value-of select="child::rdg[@wit[contains(., '#R')]]"/>
                </span>
            </xsl:when>
            <xsl:otherwise>
                
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="child::app" mode="disp-transcript-s">
        <xsl:choose>
            <xsl:when test="child::rdg/@wit[contains(., '#S')]">
                <span class="variance">
                    <xsl:value-of select="child::rdg[@wit[contains(., '#S')]]"/>
                </span>
            </xsl:when>
            <xsl:otherwise>
                
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="child::app" mode="disp-transcript-w">
        <xsl:choose>
            <xsl:when test="child::rdg/@wit[contains(., '#W')]">
                <span class="variance">
                    <xsl:value-of select="child::rdg[@wit[contains(., '#W')]]"/>
                </span>
            </xsl:when>
            <xsl:otherwise>
                
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="descendant::ab/text()">
        <xsl:value-of select="."/>
        <br/>
    </xsl:template>
</xsl:stylesheet>