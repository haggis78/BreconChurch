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
                            <div class="comp-checkbox">
                                <span class="comp-single"><input type="checkbox" id="CompCNav" onclick="CompC()"/>C<br /></span>
                                <span class="comp-single"><input type="checkbox" id="CompDNav" onclick="CompD()"/>D<br /></span>
                                <span class="comp-single"><input type="checkbox" id="CompINav" onclick="CompI()"/>I<br /></span>
                                <span class="comp-single"><input type="checkbox" id="CompJNav" onclick="CompJ()"/>J<br /></span>
                                <span class="comp-single"><input type="checkbox" id="CompONav" onclick="CompO()"/>O<br /></span>
                                <span class="comp-single"><input type="checkbox" id="CompRNav" onclick="CompR()"/>R<br /></span>
                                <span class="comp-single"><input type="checkbox" id="CompSNav" onclick="CompS()"/>S<br /></span>
                                <span class="comp-single"><input type="checkbox" id="CompWNav" onclick="CompW()"/>W<br /></span>
                            </div>
                        </div>
                        <div class="svg-page">
                            <button><a href="#ab1">1</a></button>
                            <button><a href="#ab2">2</a></button>
                            <button><a href="#ab3">3</a></button>
                            <button><a href="#ab4">4</a></button>
                            <button><a href="#ab5">5</a></button>
                            <button><a href="#ab6">6</a></button>
                            <button><a href="#ab7">7</a></button>
                            <button><a href="#ab8">8</a></button>
                            <button><a href="#ab9">9</a></button>
                            <button><a href="#ab10">10</a></button>
                            <button><a href="#ab11">11</a></button>
                            <button><a href="#ab12">12</a></button>
                            <button><a href="#ab13">13</a></button>
                            <button><a href="#ab14">14</a></button>
                            <button><a href="#ab15">15</a></button>
                            <button><a href="#ab16">16</a></button>
                            <button><a href="#ab17">17</a></button>
                            <button><a href="#ab18">18</a></button>
                            <button><a href="#ab19">19</a></button>
                            <button><a href="#ab20">20</a></button>
                            <button><a href="#ab21">21</a></button>
                            <button><a href="#ab22">22</a></button>
                            <button><a href="#ab23">23</a></button>
                            <button><a href="#ab24">24</a></button>
                            <button><a href="#ab25">25</a></button>
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
        <div id="ab{preceding::ab => count() + 1}">
            <div  class="comp-ab">
                <xsl:apply-templates/>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="descendant::rdg">
        <div class="comp-variance">
            <span class="comp-left" style="display:none" id="comp-left-{./@wit ! translate(., '#', '') ! translate(., ' ', '')}">
                <xsl:value-of select="./@wit ! translate(., '#', '')"/>
            </span>
            <span class="comp-right" style="display:none" id="comp-right-{./@wit ! translate(., '#', '') ! translate(., ' ', '')}">
                <xsl:apply-templates select=".//text()"/>
            </span>
        </div>
    </xsl:template>
</xsl:stylesheet>
