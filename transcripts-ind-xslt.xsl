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
                <title>Brecon | Transcript W</title>
            </head>
            <body>
                <!-- SSI line below-->
                <div class="header">
                    <img src="../brecon.svg" />
                </div>
                <div id="navbar">
                    <div class="navbar">
                        <a href="index.html">Home</a>
                        <div class="dropdown">
                            <button class="dropbtn">About <i class="fa fa-caret-down"></i>
                            </button>
                            <div class="dropdown-content">
                                <a href="#">History</a>
                                <a href="#">Glossary</a>
                                <a href="#">People</a>
                                <a href="#">About Team</a>
                            </div>
                        </div>
                        <div class="dropdown">
                            <button class="dropbtn">Analysis <i class="fa fa-caret-down"></i>
                            </button>
                            <div class="dropdown-content">
                                <a href="#">Timeline</a>
                                <a href="#">Maps</a>
                                <a href="#">Stemma</a>
                            </div>
                        </div>
                        <div class="dropdown">
                            <button class="dropbtn">Manuscripts<i class="fa fa-caret-down"></i></button>
                            <div class="dropdown-content">
                                <a href="../../texts.html">Manuscript Descriptions</a>
                                <a href="transcript-c.html">Manuscript C</a>
                                <a href="transcript-i.html">Manuscript I</a>
                                <a href="transcript-j.html">Manuscript J</a>
                                <a href="transcript-r.html">Manuscript R</a>
                                <a href="transcript-s.html">Manuscript S</a>
                                <a href="transcript-w.html">Manuscript W</a>
                            </div>
                        </div>
                    </div>
                </div>
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
                <script>
                    <xsl:text>
            window.onscroll = function () {
    myFunction()
};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
    if (window.pageYOffset >= sticky) {
        navbar.classList.add("sticky")
    } else {
        navbar.classList.remove("sticky");
    }
}
                    </xsl:text>
                </script>
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