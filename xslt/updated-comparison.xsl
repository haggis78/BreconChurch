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
                    <div class="header">
                        <img src="../img/background/brecon.svg" />
                    </div>
                    <div id="navbar">
                        <div class="navbar">
                            <a href="../index.html">Home</a>
                            <div class="dropdown">
                                <button class="dropbtn">About<i class="fa fa-caret-down"></i>
                                </button>
                                <div class="dropdown-content">
                                    <a href="history.html">History</a>
                                    <a href="Glossary.html">Glossary</a>
                                    <a href="BreconPeople.html">People</a>
                                    <a href="methodology.html">Methodology</a>
                                    <a href="Project_Team.html">About Team</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="dropbtn">Analysis<i class="fa fa-caret-down"></i>
                                </button>
                                <div class="dropdown-content">
                                    <a href="Timeline.html">Timeline</a>
                                    <a href="Graphs.html">Graphs</a>
                                    <a href="stemma.html">Stemma</a>
                                    <a href="TextualAnalysis.html">Textual</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="dropbtn">Witnesses<i class="fa fa-caret-down"></i>
                                </button>
                                <div class="dropdown-content">
                                    <a href="texts.html">Source Descriptions</a>
                                    <a href="patent-collection.html">Patent Roll</a>
                                    <a href="transcripts/display/display-R.html">Manuscript R</a>
                                    <a href="transcripts/display/display-C.html">Manuscript C</a>
                                    <a href="transcripts/display/display-D.html">Manuscript D</a>
                                    <a href="transcripts/display/display-I.html">Manuscript I</a>
                                    <a href="transcripts/display/display-O.html">Manuscript O</a>
                                    <a href="transcripts/display/display-W.html">Printing W</a>
                                    <a href="transcripts/display/display-S.html">Printing S</a>
                                    <a href="transcripts/display/display-J.html">Printing J</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="dropbtn">Comparison<i class="fa fa-caret-down"></i>
                                </button>
                                <div class="dropdown-content">
                                    <a href="comparison.html">Transcripts</a>
                                    <a href="edition-svg.html">Anonymous Blocks</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <xsl:comment>#include virtual="ssi/comparison-page-ssi.html"</xsl:comment>
                    <div class="content">
                        <xsl:apply-templates select="descendant::ab"/>
                    </div>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    <xsl:template match="descendant::ab">
        <div class="comp-ab">
            <span>
                <xsl:apply-templates/>
            </span>
        </div>
    </xsl:template>
    <xsl:template match="descendant::rdg">
        <div class="comp-variance">
            <span class="comp-left">
                <xsl:value-of select="./@wit ! translate(., '#', '')"/>
            </span>
            <span class="comp-right">
                <xsl:apply-templates select="./text()"/>
            </span>
        </div>
    </xsl:template>
</xsl:stylesheet>
