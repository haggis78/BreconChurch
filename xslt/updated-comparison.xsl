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
        <xsl:result-document method="xhtml" indent="yes" href="../site/html/comparison2.html">
            <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <link rel="stylesheet" type="text/css" href="../css/brecon.css" />
                    <link rel="icon" href="../img/background/brecon-favicon.png" />
                    <script src="../javascript/comp-checkbox.js" type="text/javascript"></script>
                    <title>Brecon | Comparison</title>
                </head>
                <body>
                    <xsl:comment> SSI line below </xsl:comment>
                    <xsl:comment>#include virtual="ssi/comparison-page2-ssi.html"</xsl:comment>
                    <div class="content">
                        <xsl:apply-templates select="descendant::ab"/>
                    </div>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    <xsl:template match="descendant::ab">
        <div id="ab{preceding::ab => count() + 1}">
            <div  class="comp-ab">
                <xsl:apply-templates/>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="descendant::rdg">
        <div class="comp-variance">
            <div class="comp-left">
                <span style="display:none" class="edition-{./@wit ! translate(., '#', '') ! translate(., ' ', '')}">
                    <xsl:choose>
                        <xsl:when test="./@wit !translate(., '#', '') ! tokenize(., ' ') = 'C'">
                            <span class="id-c">C </span>
                        </xsl:when>
                    </xsl:choose>
                    <xsl:choose>
                        <xsl:when test="./@wit !translate(., '#', '') ! tokenize(., ' ') = 'D'">
                            <span class="id-d">D </span>
                        </xsl:when>
                    </xsl:choose>
                    <xsl:choose>
                        <xsl:when test="./@wit !translate(., '#', '') ! tokenize(., ' ') = 'I'">
                            <span class="id-i">I </span>
                        </xsl:when>
                    </xsl:choose>
                    <xsl:choose>
                        <xsl:when test="./@wit !translate(., '#', '') ! tokenize(., ' ') = 'J'">
                            <span class="id-j">J </span>
                        </xsl:when>
                    </xsl:choose>
                    <xsl:choose>
                        <xsl:when test="./@wit !translate(., '#', '') ! tokenize(., ' ') = 'O'">
                            <span class="id-o">O </span>
                        </xsl:when>
                    </xsl:choose>
                    <xsl:choose>
                        <xsl:when test="./@wit !translate(., '#', '') ! tokenize(., ' ') = 'R'">
                            <span class="id-r">R </span>
                        </xsl:when>
                    </xsl:choose>
                    <xsl:choose>
                        <xsl:when test="./@wit !translate(., '#', '') ! tokenize(., ' ') = 'S'">
                            <span class="id-s">S </span>
                        </xsl:when>
                    </xsl:choose>
                    <xsl:choose>
                        <xsl:when test="./@wit !translate(., '#', '') ! tokenize(., ' ') = 'W'">
                            <span class="id-w">W</span>
                        </xsl:when>
                    </xsl:choose>
                </span>
            </div>
            <div class="comp-right">
                <span style="display:none" class="edition-{./@wit ! translate(., '#', '') ! translate(., ' ', '')}">
                    <xsl:apply-templates select=".//text()"/>
                </span>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
