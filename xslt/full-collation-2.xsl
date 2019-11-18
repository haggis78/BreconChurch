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
        <xsl:result-document method="xhtml" indent="yes" href="HTML_Files/argento-html/transcripts/display/disp-transcript-c.xhtml">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                    <link rel="stylesheet" type="text/css" href="../../brecon.css" />
                    <link rel="icon" href="../../brecon-favicon.png"/>
                    <script src="sticky.js" type="text/javascript"></script>
                    <title>Brecon | Transcript C</title>
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
                            <xsl:apply-templates select="descendant::ab" mode="disp-transcript-c"/>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document method="xhtml" indent="yes" href="HTML_Files/argento-html/transcripts/display/disp-transcript-i.xhtml">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                    <link rel="stylesheet" type="text/css" href="../../brecon.css" />
                    <link rel="icon" href="../../brecon-favicon.png"/>
                    <script src="sticky.js" type="text/javascript"></script>
                    <title>Brecon | Transcript I</title>
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
                            <xsl:apply-templates select="descendant::ab" mode="disp-transcript-i"/>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document method="xhtml" indent="yes" href="HTML_Files/argento-html/transcripts/display/disp-transcript-j.xhtml">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                    <link rel="stylesheet" type="text/css" href="../../brecon.css" />
                    <link rel="icon" href="../../brecon-favicon.png"/>
                    <script src="sticky.js" type="text/javascript"></script>
                    <title>Brecon | Transcript J</title>
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
                            <xsl:apply-templates select="descendant::ab" mode="disp-transcript-j"/>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document method="xhtml" indent="yes" href="HTML_Files/argento-html/transcripts/display/disp-transcript-r.xhtml">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                    <link rel="stylesheet" type="text/css" href="../../brecon.css" />
                    <link rel="icon" href="../../brecon-favicon.png"/>
                    <script src="sticky.js" type="text/javascript"></script>
                    <title>Brecon | Transcript R</title>
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
                            <xsl:apply-templates select="descendant::ab" mode="disp-transcript-r"/>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document method="xhtml" indent="yes" href="HTML_Files/argento-html/transcripts/display/disp-transcript-s.xhtml">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                    <link rel="stylesheet" type="text/css" href="../../brecon.css" />
                    <link rel="icon" href="../../brecon-favicon.png"/>
                    <script src="sticky.js" type="text/javascript"></script>
                    <title>Brecon | Transcript S</title>
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
                            <xsl:apply-templates select="descendant::ab" mode="disp-transcript-s"/>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document method="xhtml" indent="yes" href="HTML_Files/argento-html/transcripts/display/disp-transcript-w.xhtml">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                    <link rel="stylesheet" type="text/css" href="../../brecon.css" />
                    <link rel="icon" href="../../brecon-favicon.png"/>
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
                            <xsl:apply-templates select="descendant::ab" mode="disp-transcript-w"/>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document method="xhtml" indent="yes" href="HTML_Files/argento-html/transcripts/comparison/comp-transcript-c.xhtml">
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <link rel="stylesheet" type="text/css" href="../../brecon.css" />
                <link rel="icon" href="../../brecon-favicon.png"/>
                <script src="sticky.js" type="text/javascript"></script>
                <title>Brecon | Transcript C</title>
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
                        <xsl:apply-templates select="descendant::ab" mode="comp-transcript-c"/>
                    </div>
                </div>
            </body>
        </html>
        </xsl:result-document>
        <xsl:result-document method="xhtml" indent="yes" href="HTML_Files/argento-html/transcripts/comparison/comp-transcript-i.xhtml">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                    <link rel="stylesheet" type="text/css" href="../../brecon.css" />
                    <link rel="icon" href="../../brecon-favicon.png"/>
                    <script src="sticky.js" type="text/javascript"></script>
                    <title>Brecon | Transcript I</title>
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
                            <xsl:apply-templates select="descendant::ab" mode="comp-transcript-i"/>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document method="xhtml" indent="yes" href="HTML_Files/argento-html/transcripts/comparison/comp-transcript-j.xhtml">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                    <link rel="stylesheet" type="text/css" href="../../brecon.css" />
                    <link rel="icon" href="../../brecon-favicon.png"/>
                    <script src="sticky.js" type="text/javascript"></script>
                    <title>Brecon | Transcript J</title>
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
                            <xsl:apply-templates select="descendant::ab" mode="comp-transcript-j"/>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document method="xhtml" indent="yes" href="HTML_Files/argento-html/transcripts/comparison/comp-transcript-r.xhtml">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                    <link rel="stylesheet" type="text/css" href="../../brecon.css" />
                    <link rel="icon" href="../../brecon-favicon.png"/>
                    <script src="sticky.js" type="text/javascript"></script>
                    <title>Brecon | Transcript R</title>
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
                            <xsl:apply-templates select="descendant::ab" mode="comp-transcript-r"/>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document method="xhtml" indent="yes" href="HTML_Files/argento-html/transcripts/comparison/comp-transcript-s.xhtml">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                    <link rel="stylesheet" type="text/css" href="../../brecon.css" />
                    <link rel="icon" href="../../brecon-favicon.png"/>
                    <script src="sticky.js" type="text/javascript"></script>
                    <title>Brecon | Transcript S</title>
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
                            <xsl:apply-templates select="descendant::ab" mode="comp-transcript-s"/>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document method="xhtml" indent="yes" href="HTML_Files/argento-html/transcripts/comparison/comp-transcript-w.xhtml">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                    <link rel="stylesheet" type="text/css" href="../../brecon.css" />
                    <link rel="icon" href="../../brecon-favicon.png"/>
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
                            <xsl:apply-templates select="descendant::ab" mode="comp-transcript-w"/>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    <xsl:template match="descendant::ab" mode="disp-transcript-c disp-transcript-i disp-transcript-j disp-transcript-r disp-transcript-s disp-transcript-w">
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
    <xsl:template match="child::app" mode="comp-transcript-c">
        <xsl:choose>
            <xsl:when test="child::rdg/@wit[contains(., '#C')]">
                <span class="variance">
                    <xsl:value-of select="child::rdg[@wit[contains(., '#C')]]"/>
                </span>
                <br/>
            </xsl:when>
            <xsl:otherwise>
                
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="child::app" mode="comp-transcript-i">
        <xsl:choose>
            <xsl:when test="child::rdg/@wit[contains(., '#I')]">
                <span class="variance">
                    <xsl:value-of select="child::rdg[@wit[contains(., '#I')]]"/>
                </span>
                <br/>
            </xsl:when>
            <xsl:otherwise>
                
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="child::app" mode="comp-transcript-j">
        <xsl:choose>
            <xsl:when test="child::rdg/@wit[contains(., '#J')]">
                <span class="variance">
                    <xsl:value-of select="child::rdg[@wit[contains(., '#J')]]"/>
                </span>
                <br/>
            </xsl:when>
            <xsl:otherwise>
                
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="child::app" mode="comp-transcript-r">
        <xsl:choose>
            <xsl:when test="child::rdg/@wit[contains(., '#R')]">
                <span class="variance">
                    <xsl:value-of select="child::rdg[@wit[contains(., '#R')]]"/>
                </span>
                <br/>
            </xsl:when>
            <xsl:otherwise>
                
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="child::app" mode="comp-transcript-s">
        <xsl:choose>
            <xsl:when test="child::rdg/@wit[contains(., '#S')]">
                <span class="variance">
                    <xsl:value-of select="child::rdg[@wit[contains(., '#S')]]"/>
                </span>
                <br/>
            </xsl:when>
            <xsl:otherwise>
                
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="child::app" mode="comp-transcript-w">
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
    <xsl:template match="child::app" mode="comp-transcript-o">
        <xsl:choose>
            <xsl:when test="child::rdg/@wit[contains(., '#O')]">
                <span class="variance">
                    <xsl:value-of select="child::rdg[@wit[contains(., '#O')]]"/>
                </span>
                <br/>
            </xsl:when>
            <xsl:otherwise>
                
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="descendant::ab/text()" mode="comp-transcript-c comp-transcript-i comp-transcript-j comp-transcript-r comp-transcript-s comp-transcript-w">
        <xsl:value-of select="."/><br/>
    </xsl:template>
</xsl:stylesheet>