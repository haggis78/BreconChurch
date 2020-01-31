<?xml version="1.0" encoding="UTF-8"?>
<!-- AMA: The purpose of this XSLT is to output the an svg page that shows the variances between all editions page. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:variable name="currentEdition" as="node()+" select="descendant::note"/>
    <xsl:template match="/">
        <xsl:result-document method="xhtml" indent="yes" href="../site/html/comparison-3.html">
            <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <link rel="stylesheet" type="text/css" href="../css/brecon.css" />
                    <link rel="icon" href="../img/background/brecon-favicon.png" />
                    <script src="../javascript/comp-checkbox2.js" type="text/javascript"></script>
                    <title>Brecon | Comparison</title>
                </head>
                <body>
                    <xsl:comment> SSI line below </xsl:comment>
                    <div class="header">
                        <img src="../img/background/brecon.svg" alt="Image of 'Brecon Collegiate Church and School' in script across the top"/>
                    </div>
                    <div id="navbar">
                        <div class="navbar">
                            <a href="../index.html">Home</a>
                            <div class="dropdown">
                                <button class="dropbtn">About<i class="fa fa-caret-down"></i></button>
                                <div class="dropdown-content">
                                    <a href="history.html">History</a>
                                    <a href="Glossary.html">Glossary</a>
                                    <a href="BreconPeople.html">People</a>
                                    <a href="methodology.html">Methodology</a>
                                    <a href="Project_Team.html">About Team</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="dropbtn">Analysis<i class="fa fa-caret-down"></i></button>
                                <div class="dropdown-content">
                                    <a href="Timeline.html">Timeline</a>
                                    <a href="TextualAnalysis.html#codicum">Stemma</a>
                                    <a href="Graphs.html">Graphs</a>
                                    <a href="TextualAnalysis.html">Textual</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="dropbtn">Witnesses<i class="fa fa-caret-down"></i></button>
                                <div class="dropdown-content">
                                    <a href="texts.html">Source Descriptions</a>
                                    <a href="patent-collection.html">Patent Roll</a>
                                    <a href="transcripts/display-R.html">Manuscript R</a>
                                    <a href="transcripts/display-C.html">Manuscript C</a>
                                    <a href="transcripts/display-D.html">Manuscript D</a>
                                    <a href="transcripts/display-I.html">Manuscript I</a>
                                    <a href="transcripts/display-O.html">Manuscript O</a>
                                    <a href="transcripts/display-W.html">Printing W</a>
                                    <a href="transcripts/display-S.html">Printing S</a>
                                    <a href="transcripts/display-J.html">Printing J</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="dropbtn">Comparison<i class="fa fa-caret-down"></i></button>
                                <div class="dropdown-content">
                                    <a href="comparison.html">Transcripts</a>
                                    <a href="edition-svg.html">Anonymous Blocks</a>
                                </div>
                            </div>
                            <div class="comp-checkbox">
                                <span class="comp-single"><input type="checkbox" id="CompCNav" onclick="CompC()"
                                />C<br /></span>
                                <span class="comp-single"><input type="checkbox" id="CompDNav" onclick="CompD()"
                                />D<br /></span>
                                <span class="comp-single"><input type="checkbox" id="CompINav" onclick="CompI()"
                                />I<br /></span>
                                <span class="comp-single"><input type="checkbox" id="CompJNav" onclick="CompJ()"
                                />J<br /></span>
                                <span class="comp-single"><input type="checkbox" id="CompONav" onclick="CompO()"
                                />O<br /></span>
                                <span class="comp-single"><input type="checkbox" id="CompRNav" onclick="CompR()"
                                />R<br /></span>
                                <span class="comp-single"><input type="checkbox" id="CompSNav" onclick="CompS()"
                                />S<br /></span>
                                <span class="comp-single"><input type="checkbox" id="CompWNav" onclick="CompW()"
                                />W<br /></span>
                                <button>CLEAR</button>
                            </div>
                        </div>
                        <div class="svg-page">
                            <label><a href="#ab1">1</a></label>
                            <label><a href="#ab2">2</a></label>
                            <label><a href="#ab3">3</a></label>
                            <label><a href="#ab4">4</a></label>
                            <label><a href="#ab5">5</a></label>
                            <label><a href="#ab6">6</a></label>
                            <label><a href="#ab7">7</a></label>
                            <label><a href="#ab8">8</a></label>
                            <label><a href="#ab9">9</a></label>
                            <label><a href="#ab10">10</a></label>
                            <label><a href="#ab11">11</a></label>
                            <label><a href="#ab12">12</a></label>
                            <label><a href="#ab13">13</a></label>
                            <label><a href="#ab14">14</a></label>
                            <label><a href="#ab15">15</a></label>
                            <label><a href="#ab16">16</a></label>
                            <label><a href="#ab17">17</a></label>
                            <label><a href="#ab18">18</a></label>
                            <label><a href="#ab19">19</a></label>
                            <label><a href="#ab20">20</a></label>
                            <label><a href="#ab21">21</a></label>
                            <label><a href="#ab22">22</a></label>
                            <label><a href="#ab23">23</a></label>
                            <label><a href="#ab24">24</a></label>
                            <label><a href="#ab25">25</a></label>
                        </div>
                    </div>
                    
                    <xsl:comment>#include virtual="ssi/comparison-page2-ssi.html"</xsl:comment>
                    <div class="content">
                        <xsl:apply-templates select="descendant::ab"/>
                    </div>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    <xsl:template match="descendant::ab">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="descendant::rdg">
        <xsl:if test="attribute::wit[contains(., 'C')]">
            <div class="c-variance comp" style="display:none">
                <span class="left">C</span>
                <span class="right">
                    <xsl:apply-templates select="./text()"/>
                </span>
            </div>
        </xsl:if>
        <xsl:if test="attribute::wit[contains(., 'D')]">
            <div class="d-variance comp" style="display:none">
                <span class="left">D</span>
                <span class="right">
                    <xsl:apply-templates select="./text()"/>
                </span>
            </div>
        </xsl:if>
        <xsl:if test="attribute::wit[contains(., 'I')]">
            <div class="i-variance comp" style="display:none">
                <span class="left">I</span>
                <span class="right">
                    <xsl:apply-templates select="./text()"/>
                </span>
            </div>
        </xsl:if>
        <xsl:if test="attribute::wit[contains(., 'O')]">
            <div class="o-variance comp" style="display:none">
                <span class="left">O</span>
                <span class="right">
                    <xsl:apply-templates select="./text()"/>
                </span>
            </div>
        </xsl:if>
        <xsl:if test="attribute::wit[contains(., 'R')]">
            <div class="r-variance comp" style="display:none">
                <span class="left">R</span>
                <span class="right">
                    <xsl:apply-templates select="./text()"/>
                </span>
            </div>
        </xsl:if>
        <xsl:if test="attribute::wit[contains(., 'S')]">
            <div class="s-variance comp" style="display:none">
                <span class="left">S</span>
                <span class="right">
                    <xsl:apply-templates select="./text()"/>
                </span>
            </div>
        </xsl:if>
        <xsl:if test="attribute::wit[contains(., 'W')]">
            <div class="w-variance comp" style="display:none">
                <span class="left">w</span>
                <span class="right">
                    <xsl:apply-templates select="./text()"/>
                </span>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>