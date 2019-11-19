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
    <xsl:variable name="editionColl" as="node()+" select="//altIdentifier/note"/>
    <!--ebb: I changed this to start from `//` because it's a global variable and really does start its XPath from the document node. -->
    <xsl:template match="/">
        <xsl:for-each select="$editionColl">
            <xsl:variable name="filename" as="xs:string">
                <xsl:value-of select="current() ! string()"/>
            </xsl:variable>
            <!--2019-11-18 ebb: Since we just want to use this as a text string to construct the filename, I wanted to drop its XML node properties and just type this variable as a string (datatype xs:string).  -->
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
                                <xsl:apply-templates select="root()/descendant::ab">
                                    <xsl:with-param name="currentEd" as="node()" select="current()"/>
                                </xsl:apply-templates>
                                <!--ebb: Here is where we set an XSLT parameter using xsl:with-param. An XSLT parameter is a special kind of variable that takes something we define from this current template rule, and delivers it to other template rules that will be firing in response to this one. Notice it looks a lot like setting a variable! you give it a name, and the @select attribute sets its value, according to the current context of your template rule. We'll need to invoke the parameter in the other template rules using xsl:param, which is designed to call on the name we gave this parameter here.-->
                            </div>
                        </div>
                    </body>
                </html>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="ab">
        <xsl:param name="currentEd"/>
        <!--ebb: We won't be doing anything with the parameter in this template rule, but it's kind of a through-way to the template that *will* be using it, so we call the parameter here in line 52. -->
        <xsl:for-each select=".">
            <p>
                <xsl:apply-templates>
                    <xsl:with-param name="currentEd" select="$currentEd" as="node()"/>
                </xsl:apply-templates>
                <!--ebb: And here we pass it along again calling it just like we would an ordinary variable in this xsl:with-param in line 57. -->
            </p>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="app">
        <xsl:param name="currentEd"/>
            <xsl:if test="rdg[contains(@wit, $currentEd ! string())]">
                <span class="variance">
                    <xsl:value-of select="rdg[@wit[contains(., $currentEd ! string())]]"/>
                </span>
            </xsl:if>
      <!--ebb: Finally, we call the parameter one more time here, and actually work with its value to help set your span elements around instances of variance in the output edition. -->
    </xsl:template>
</xsl:stylesheet>