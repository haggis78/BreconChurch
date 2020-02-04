<?xml version="1.0" encoding="UTF-8"?>
<!-- AMA: The purpose of this XSLT is to output the an svg page that shows the variances between all editions page. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0">

    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:variable name="currentAB" as="node()+" select="descendant::ab"/>
    <xsl:template match="/">
        <xsl:result-document method="xhtml" indent="yes" href="../site/html/network.html">
            <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                    <link rel="stylesheet" type="text/css" href="../css/brecon.css"/>
                    <link rel="icon" href="../img/background/brecon-favicon.png"/>
                    <script src="../javascript/network.js"/>
                    <title>Brecon | Network Analysis</title>
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
                                <button class="dropbtn">About<i class="fa fa-caret-down"/></button>
                                <div class="dropdown-content">
                                    <a href="history.html">History</a>
                                    <a href="Glossary.html">Glossary</a>
                                    <a href="BreconPeople.html">People</a>
                                    <a href="methodology.html">Methodology</a>
                                    <a href="Project_Team.html">About Team</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="dropbtn">Analysis<i class="fa fa-caret-down"/></button>
                                <div class="dropdown-content">
                                    <a href="Timeline.html">Timeline</a>
                                    <a href="TextualAnalysis.html#codicum">Stemma</a>
                                    <a href="Graphs.html">Graphs</a>
                                    <a href="TextualAnalysis.html">Textual</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="dropbtn">Witnesses<i class="fa fa-caret-down"/></button>
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
                                <button class="dropbtn">Comparison<i class="fa fa-caret-down"/></button>
                                <div class="dropdown-content">
                                    <a href="comparison.html">Transcripts</a>
                                    <a href="edition-svg.html">Anonymous Blocks</a>
                                </div>
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
                    <xsl:comment>#include virtual="ssi/netwrok-ssi.html" </xsl:comment>
                    <div class="content">
                        <p>On this page are network analyses for each anonymous block. Each graph
                            has a circle for each edition. The size of the circle reflects the
                            number of variances that the edition has in that anonymous block that
                            contains text. The thickness of the lines connecting the circles
                            (editions) shows the number of anonymous blocks that the editions have
                            in common. If there is not a line present, the editions have no text
                            variances in common.</p>
                        <xsl:for-each select="$currentAB">
                            <div class="network" id="ab{position()}">
                                <div class="network-info">
                                    <table class="network-table-info">
                                        <caption>
                                            <b>
                                                <xsl:text>AB #</xsl:text>
                                                <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')]] => count()"/>
                                            </b>
                                        </caption>
                                        <colgroup class="network-col-width"/>
                                        <tr>
                                            <th></th>
                                            <th id="head-C-colu-ab{position()}">C</th>
                                            <th id="head-D-colu-ab{position()}">D</th>
                                            <th id="head-I-colu-ab{position()}">I</th>
                                            <th id="head-J-colu-ab{position()}">J</th>
                                            <th id="head-O-colu-ab{position()}">O</th>
                                            <th id="head-R-colu-ab{position()}">R</th>
                                            <th id="head-S-colu-ab{position()}">S</th>
                                            <th id="head-W-colu-ab{position()}">W</th>
                                        </tr>
                                        <tr>
                                            <td><b>Text</b></td>
                                            <td id="td-ct-1ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')]] => count() - .[position()]//rdg[@wit[contains(., 'C')]][not(descendant::text())] =>count()"/></td>
                                            <td id="td-dt-2ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')]] => count() - .[position()]//rdg[@wit[contains(., 'D')]][not(descendant::text())] =>count()"/></td>
                                            <td id="td-it-3ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')]] => count() - .[position()]//rdg[@wit[contains(., 'I')]][not(descendant::text())] =>count()"/></td>
                                            <td id="td-jt-4ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')]] => count() - .[position()]//rdg[@wit[contains(., 'J')]][not(descendant::text())] =>count()"/></td>
                                            <td id="td-ot-5ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')]] => count() - .[position()]//rdg[@wit[contains(., 'O')]][not(descendant::text())] =>count()"/></td>
                                            <td id="td-rt-6ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')]] => count() - .[position()]//rdg[@wit[contains(., 'R')]][not(descendant::text())] =>count()"/></td>
                                            <td id="td-st-7ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')]] => count() - .[position()]//rdg[@wit[contains(., 'S')]][not(descendant::text())] =>count()"/></td>
                                            <td id="td-wt-8ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')]] => count() - .[position()]//rdg[@wit[contains(., 'W')]][not(descendant::text())] =>count()"/></td>
                                        </tr>
                                        <tr>
                                            <td><b>Unique</b></td>
                                            <td id="td-cu-1ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit='#C'] => count()"/></td>
                                            <td id="td-du-2ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit='#D'] => count()"/></td>
                                            <td id="td-iu-2ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit='#I'] => count()"/></td>
                                            <td id="td-ju-4ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit='#J'] => count()"/></td>
                                            <td id="td-ou-5ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit='#O'] => count()"/></td>
                                            <td id="td-ru-6ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit='#R'] => count()"/></td>
                                            <td id="td-su-7ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit='#S'] => count()"/></td>
                                            <td id="td-wu-8ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit='#W'] => count()"/></td>
                                        </tr>
                                        <tr>
                                            <td><b>Shared</b></td>
                                            <td>
                                                <xsl:value-of select="((.[position()]//rdg[@wit[contains(., 'C')][contains(., 'D')]] => count()) > 0) => count()"/>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <svg xmlns="http://www.w3.org/2000/svg" width="500" height="500" viewBox="150 0 700 600">
                                    <g class="network-analysis">
                                        <g class="lines">
                                            <line class="CD-yz-cd-ab{position()} z-cd-ab{position()}" id="line-CD-yz-cd-ab{position()}" x1="500" y1="50" x2="675" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'D')]] => count()}">
                                                <title>
                                                    <xsl:text>C to D: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'D')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="CI-yz-ci-ab{position()} z-ci-ab{position()}" id="line-CI-yz-ci-ab{position()}" x1="500" y1="50" x2="750" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'I')]] => count()}">
                                                <title>
                                                    <xsl:text>C to I: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'I')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="CJ-yz-cj-ab{position()} z-cj-ab{position()}" id="line-CJ-yz-cj-ab{position()}" x1="500" y1="50" x2="675" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'J')]] => count()}">
                                                <title>
                                                    <xsl:text>C to J: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'J')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="CO-yz-co-ab{position()} z-co-ab{position()}" id="line-CO-yz-co-ab{position()}" x1="500" y1="50" x2="500" y2="550" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'O')]] => count()}">
                                                <title>
                                                    <xsl:text>C to O: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'O')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="CR-yz-cr-ab{position()} z-cr-ab{position()}" id="line-CR-yz-cr-ab{position()}" x1="500" y1="50" x2="325" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'R')]] => count()}">
                                                <title>
                                                    <xsl:text>C to R: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'R')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="CS-yz-cs-ab{position()} z-cs-ab{position()}" id="line-CS-yz-cs-ab{position()}" x1="500" y1="50" x2="250" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'S')]] => count()}">
                                                <title>
                                                    <xsl:text>C to S: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'S')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="CW-yz-cw-ab{position()} z-cw-ab{position()}" id="line-CW-yz-cw-ab{position()}" x1="500" y1="50" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'W')]] => count()}">
                                                <title>
                                                    <xsl:text>C to W: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'W')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="DI-yz-di-ab{position()} z-di-ab{position()}" id="line-DI-yz-di-ab{position()}" x1="675" y1="125" x2="750" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'D')][contains(., 'I')]] => count()}">
                                                <title>
                                                    <xsl:text>D to I: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'I')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="DJ-yz-dj-ab{position()} z-dj-ab{position()}" id="line-DJ-yz-dj-ab{position()}" x1="675" y1="125" x2="675" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'D')][contains(., 'J')]] => count()}">
                                                <title>
                                                    <xsl:text>D to J: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'J')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="DO-yz-do-ab{position()} z-do-ab{position()}" id="line-DO-yz-do-ab{position()}" x1="675" y1="125" x2="500" y2="550" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'D')][contains(., 'O')]] => count()}">
                                                <title>
                                                    <xsl:text>D to O: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'O')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="DR-yz-dr-ab{position()} z-dr-ab{position()}" id="line-DR-yz-dr-ab{position()}" x1="675" y1="125" x2="325" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'D')][contains(., 'R')]] => count()}">
                                                <title>
                                                    <xsl:text>D to R: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'R')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="DS-yz-ds-ab{position()} z-ds-ab{position()}" id="line-DS-yz-ds-ab{position()}" x1="675" y1="125" x2="250" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'D')][contains(., 'S')]] => count()}">
                                                <title>
                                                    <xsl:text>D to S: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'S')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="DW-yz-dw-ab{position()} z-dw-ab{position()}" id="line-DW-yz-dw-ab{position()}" x1="675" y1="125" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'D')][contains(., 'W')]] => count()}">
                                                <title>
                                                    <xsl:text>D to W: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'W')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="IJ-yz-ij-ab{position()} z-ij-ab{position()}" id="line-IJ-yz-ij-ab{position()}" x1="750" y1="300" x2="675" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'I')][contains(., 'J')]] => count()}">
                                                <title>
                                                    <xsl:text>I to J: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'J')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="IO-yz-io-ab{position()} z-io-ab{position()}" id="line-IO-yz-io-ab{position()}" x1="750" y1="300" x2="500" y2="550" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'I')][contains(., 'O')]] => count()}">
                                                <title>
                                                    <xsl:text>I to O: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'O')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="IR-yz-ir-ab{position()} z-ir-ab{position()}" id="line-IR-yz-ir-ab{position()}" x1="750" y1="300" x2="325" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'I')][contains(., 'R')]] => count()}">
                                                <title>
                                                    <xsl:text>I to R: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'R')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="IS-yz-is-ab{position()} z-is-ab{position()}" id="line-IS-yz-is-ab{position()}" x1="750" y1="300" x2="250" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'I')][contains(., 'S')]] => count()}">
                                                <title>
                                                    <xsl:text>I to S: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'S')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="IW-yz-iw-ab{position()} z-iw-ab{position()}" id="line-IW-yz-iw-ab{position()}" x1="750" y1="300" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'I')][contains(., 'W')]] => count()}">
                                                <title>
                                                    <xsl:text>I to W: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'W')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="JO-yz-jo-ab{position()} z-jo-ab{position()}" id="line-JO-yz-jo-ab{position()}" x1="675" y1="475" x2="500" y2="550" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'J')][contains(., 'O')]] => count()}">
                                                <title>
                                                    <xsl:text>J to O: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'O')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="JR-yz-jr-ab{position()} z-jr-ab{position()}" id="line-JR-yz-jr-ab{position()}" x1="675" y1="475" x2="325" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'J')][contains(., 'R')]] => count()}">
                                                <title>
                                                    <xsl:text>J to R: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'R')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="JS-yz-js-ab{position()} z-js-ab{position()}" id="line-JS-yz-js-ab{position()}" x1="675" y1="475" x2="250" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'J')][contains(., 'S')]] => count()}">
                                                <title>
                                                    <xsl:text>J to S: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'S')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="JW-yz-jw-ab{position()} z-jw-ab{position()}" id="line-JW-yz-jw-ab{position()}" x1="675" y1="475" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'J')][contains(., 'W')]] => count()}">
                                                <title>
                                                    <xsl:text>J to W: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'W')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="OR-yz-or-ab{position()} z-or-ab{position()}" id="line-OR-yz-or-ab{position()}" x1="500" y1="550" x2="325" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'O')][contains(., 'R')]] => count()}">
                                                <title>
                                                    <xsl:text>O to R: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'R')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="OS-yz-os-ab{position()} z-os-ab{position()}" id="line-OS-yz-os-ab{position()}" x1="500" y1="550" x2="250" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'O')][contains(., 'S')]] => count()}">
                                                <title>
                                                    <xsl:text>O to S: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'S')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="OW-yz-ow-ab{position()} z-ow-ab{position()}" id="line-OW-yz-ow-ab{position()}" x1="500" y1="550" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'O')][contains(., 'W')]] => count()}">
                                                <title>
                                                    <xsl:text>O to W: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'W')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="RS-yz-rs-ab{position()} z-rs-ab{position()}" id="line-RS-yz-rs-ab{position()}" x1="325" y1="475" x2="250" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'R')][contains(., 'S')]] => count()}">
                                                <title>
                                                    <xsl:text>R to S: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'S')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="RW-yz-rw-ab{position()} z-rw-ab{position()}" id="line-RW-yz-rw-ab{position()}" x1="325" y1="475" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'R')][contains(., 'W')]] => count()}">
                                                <title>
                                                    <xsl:text>R to W: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'W')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="SW-yz-sw-ab{position()} z-sw-ab{position()}" id="line-SW-yz-sw-ab{position()}" x1="250" y1="300" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'S')][contains(., 'W')]] => count()}">
                                                <title>
                                                    <xsl:text>S to W: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')][contains(., 'W')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                        </g>
                                        <g class="circles">
                                            <g class="c-edition">
                                                <rect x="490" y="35" width="20" height="20" fill="black"/>
                                                <circle id="circleC2-ab{position()}" r="{((.[position()]//rdg[@wit[contains(., 'C')]] => count() - .[position()]//rdg[@wit[contains(., 'C')]][not(descendant::text())] =>count()) * 5 + 10)}" cx="500" cy="45" stroke="black" fill="#ff3ad4"/>
                                                <text x="500" y="50" fill="white" text-anchor="middle">C</text>
                                                <circle id="circleC1-ab{position()}" r="20" cx="500" cy="45" opacity="0">
                                                    <title>
                                                        <xsl:text>Unique Variances: </xsl:text>
                                                        <xsl:value-of select=".[position()]//rdg[@wit = '#C'] => count()" />
                                                    </title>
                                                </circle>
                                            </g>
                                            <g class="d-edition">
                                                <rect x="665" y="110" width="20" height="20" fill="black"/>
                                                <circle id="circleD2-ab{position()}" r="{((.[position()]//rdg[@wit[contains(., 'D')]] => count() - .[position()]//rdg[@wit[contains(., 'D')]][not(descendant::text())] =>count()) * 5 + 10)}" cx="675" cy="120" stroke="black" fill="#ff3f3a"/>
                                                <text x="675" y="125" fill="white" text-anchor="middle">D</text>
                                                <circle id="circleD1-ab{position()}" r="20" cx="675" cy="120" opacity="0">
                                                    <title>
                                                        <xsl:text>Unique Variances: </xsl:text>
                                                        <xsl:value-of select=".[position()]//rdg[@wit = '#D'] => count()"/>
                                                    </title>
                                                </circle>
                                            </g>
                                            <g class="i-edition">
                                                <rect x="740" y="285" width="20" height="20" fill="black"/>
                                                <circle id="circleI2-ab{position()}" r="{((.[position()]//rdg[@wit[contains(., 'I')]] => count() - .[position()]//rdg[@wit[contains(., 'I')]][not(descendant::text())] =>count()) * 5 + 10)}" cx="750" cy="295" stroke="black" fill="#ffac3a"/>
                                                <text x="750" y="300" fill="white" text-anchor="middle">I</text>
                                                <circle id="circleI1-ab{position()}" r="20" cx="750" cy="295" opacity="0">
                                                    <title>
                                                        <xsl:text>Unique Variances: </xsl:text>
                                                        <xsl:value-of select=".[position()]//rdg[@wit = '#I'] => count()"/>
                                                    </title>
                                                </circle>
                                            </g>
                                            <g class="j-edition">
                                                <rect x="665" y="460" width="20" height="20" fill="black"/>
                                                <circle id="circleJ2-ab{position()}" r="{((.[position()]//rdg[@wit[contains(., 'J')]] => count() - .[position()]//rdg[@wit[contains(., 'J')]][not(descendant::text())] =>count()) * 5 + 10)}" cx="675" cy="470" stroke="black" fill="#ffe83a"/>
                                                <text x="675" y="475" fill="white" text-anchor="middle">J</text>
                                                <circle id="circleJ1-ab{position()}" r="20" cx="675" cy="470" opacity="0">
                                                    <title>
                                                        <xsl:text>Unique Variances: </xsl:text>
                                                        <xsl:value-of select=".[position()]//rdg[@wit = '#J'] => count()"/>
                                                    </title>
                                                </circle>
                                            </g>
                                            <g class="o-edition">
                                                <rect x="490" y="535" width="20" height="20" fill="black"/>
                                                <circle id="circleO2-ab{position()}" r="{((.[position()]//rdg[@wit[contains(., 'O')]] => count() - .[position()]//rdg[@wit[contains(., 'O')]][not(descendant::text())] =>count()) * 5 + 10)}" cx="500" cy="545" stroke="black" fill="#3aff47"/>
                                                <text x="500" y="550" fill="white" text-anchor="middle">O</text>
                                                <circle id="circleO1-ab{position()}" r="20" cx="500" cy="545" opacity="0">
                                                    <title>
                                                       <xsl:text>Unique Variances: </xsl:text>
                                                        <xsl:value-of select=".[position()]//rdg[@wit = '#O'] => count()"/>
                                                    </title>
                                                </circle>
                                            </g>
                                            <g class="r-edition">
                                                <rect x="315" y="460" width="20" height="20" fill="black"/>
                                                <circle id="circleR2-ab{position()}" r="{((.[position()]//rdg[@wit[contains(., 'R')]] => count() - .[position()]//rdg[@wit[contains(., 'R')]][not(descendant::text())] =>count()) * 5 + 10)}" cx="325" cy="470" stroke="black" fill="#48acff"/>
                                                <text x="325" y="475" fill="white" text-anchor="middle">R</text>
                                                <circle id="circleR1-ab{position()}" r="20" cx="325" cy="470" opacity="0">
                                                    <title>
                                                        <xsl:text>Unique Variances: </xsl:text>
                                                        <xsl:value-of select=".[position()]//rdg[@wit = '#R'] => count()"/>
                                                    </title>
                                                </circle>
                                            </g>
                                            <g class="s-edition">
                                                <rect x="240" y="285" width="20" height="20" fill="black"/>
                                                <circle id="circleS2-ab{position()}" r="{((.[position()]//rdg[@wit[contains(., 'S')]] => count() - .[position()]//rdg[@wit[contains(., 'S')]][not(descendant::text())] =>count()) * 5 + 10)}" cx="250" cy="295" stroke="black" fill="#6636ff"/>
                                                <text x="250" y="300" fill="white" text-anchor="middle">S</text>
                                                <circle id="circleS1-ab{position()}" r="20" cx="250" cy="295" opacity="0">
                                                    <title>
                                                        <xsl:text>Unique Variances: </xsl:text>
                                                        <xsl:value-of select=".[position()]//rdg[@wit = '#S'] => count()"/>
                                                    </title>
                                                </circle>
                                            </g>
                                            <g class="w-edition">
                                                <rect x="315" y="110" width="20" height="20" fill="black"/>
                                                <circle id="circleW2-ab{position()}" r="{((.[position()]//rdg[@wit[contains(., 'W')]] => count() - .[position()]//rdg[@wit[contains(., 'W')]][not(descendant::text())] =>count()) * 5 + 10)}" cx="325" cy="120" stroke="black" fill="#a848ff"/>
                                                <text x="325" y="125" fill="white" text-anchor="middle">W</text>
                                                <circle id="circleW1-ab{position()}" r="20" cx="325" cy="120" opacity="0">
                                                    <title>
                                                        <xsl:text>Unique Variances: </xsl:text>
                                                        <xsl:value-of select=".[position()]//rdg[@wit = '#W'] => count()"/>
                                                    </title>
                                                </circle>
                                            </g>
                                        </g>
                                    </g>
                                </svg>
                                <div class="network-table">
                                    <h3>
                                        <xsl:text>Total Variances: </xsl:text>
                                        <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')]] => count()"/>
                                    </h3>
                                    <table class="network-table">
                                        <caption><b>Apps in Common</b></caption>
                                        <tr>
                                            <th/>
                                            <th id="head-C-col-ab{position()}">C</th>
                                            <th id="head-D-col-ab{position()}">D</th>
                                            <th id="head-I-col-ab{position()}">I</th>
                                            <th id="head-J-col-ab{position()}">J</th>
                                            <th id="head-O-col-ab{position()}">O</th>
                                            <th id="head-R-col-ab{position()}">R</th>
                                            <th id="head-S-col-ab{position()}">S</th>
                                            <th id="head-W-col-ab{position()}">W</th>
                                        </tr>
                                        <tr>
                                            <td id="head-C-row-ab{position()}"><b>C</b></td>
                                            <td id="column1-1-ab{position()}"> </td>
                                            <td id="column2-1-1yz-cd-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'D')]] => count()"/></td>
                                            <td id="column3-1-1yz-ci-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'I')]] => count()"/></td>
                                            <td id="column4-1-1yz-cj-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'J')]] => count()"/></td>
                                            <td id="column5-1-1yz-co-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'O')]] => count()"/></td>
                                            <td id="column6-1-1yz-cr-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'R')]] => count()"/></td>
                                            <td id="column7-1-1yz-cs-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'S')]] => count()"/></td>
                                            <td id="column8-1-1yz-cw-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'W')]] => count()"/></td>
                                        </tr>
                                        <tr>
                                            <td id="head-D-row-ab{position()}"><b>D</b></td>
                                            <td id="column1-2-2yz-cd-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'C')]] => count()"/></td>
                                            <td id="column2-2-ab{position()}"> </td>
                                            <td id="column3-2-1yz-di-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'I')]] => count()"/></td>
                                            <td id="column4-2-1yz-dj-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'J')]] => count()"/></td>
                                            <td id="column5-2-1yz-do-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'O')]] => count()"/></td>
                                            <td id="column6-2-1yz-dr-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'R')]] => count()"/></td>
                                            <td id="column7-2-1yz-ds-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'S')]] => count()"/></td>
                                            <td id="column8-2-1yz-dw-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'W')]] => count()"/></td>
                                        </tr>
                                        <tr>
                                            <td id="head-I-row-ab{position()}"><b>I</b></td>
                                            <td id="column1-3-2yz-ci-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'C')]] => count()"/></td>
                                            <td id="column2-3-2yz-di-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'D')]] => count()"/></td>
                                            <td id="column3-3-ab{position()}"> </td>
                                            <td id="column4-3-1yz-ij-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'J')]] => count()"/></td>
                                            <td id="column5-3-1yz-io-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'O')]] => count()"/></td>
                                            <td id="column6-3-1yz-ir-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'R')]] => count()"/></td>
                                            <td id="column7-3-1yz-is-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'S')]] => count()"/></td>
                                            <td id="column8-3-1yz-iw-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'W')]] => count()"/></td>
                                        </tr>
                                        <tr>
                                            <td id="head-J-row-ab{position()}"><b>J</b></td>
                                            <td id="column1-4-2yz-cj-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'C')]] => count()"/></td>
                                            <td id="column2-4-2yz-dj-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'D')]] => count()"/></td>
                                            <td id="column3-4-2yz-ij-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'I')]] => count()"/></td>
                                            <td id="column4-4-ab{position()}"> </td>
                                            <td id="column5-4-1yz-jo-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'O')]] => count()"/></td>
                                            <td id="column6-4-1yz-jr-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'R')]] => count()"/></td>
                                            <td id="column7-4-1yz-js-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'S')]] => count()"/></td>
                                            <td id="column8-4-1yz-jw-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'W')]] => count()"/></td>
                                        </tr>
                                        <tr>
                                            <td id="head-O-row-ab{position()}"><b>O</b></td>
                                            <td id="column1-5-2yz-co-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'C')]] => count()"/></td>
                                            <td id="column2-5-2yz-do-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'D')]] => count()"/></td>
                                            <td id="column3-5-2yz-io-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'I')]] => count()"/></td>
                                            <td id="column4-5-2yz-jo-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'J')]] => count()"/></td>
                                            <td id="column5-5-ab{position()}"> </td>
                                            <td id="column6-5-1yz-or-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'R')]] => count()"/></td>
                                            <td id="column7-5-1yz-os-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'S')]] => count()"/></td>
                                            <td id="column8-5-1yz-ow-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'W')]] => count()"/></td>
                                        </tr>
                                        <tr>
                                            <td id="head-R-row-ab{position()}"><b>R</b></td>
                                            <td id="column1-6-2yz-cr-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'C')]] => count()"/></td>
                                            <td id="column2-6-2yz-dr-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'D')]] => count()"/></td>
                                            <td id="column3-6-2yz-ir-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'I')]] => count()"/></td>
                                            <td id="column4-6-2yz-jr-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'J')]] => count()"/></td>
                                            <td id="column5-6-2yz-or-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'O')]] => count()"/></td>
                                            <td id="column6-6-ab{position()}"> </td>
                                            <td id="column7-6-1yz-rs-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'S')]] => count()"/></td>
                                            <td id="column8-6-1yz-rw-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'W')]] => count()"/></td>
                                        </tr>
                                        <tr>
                                            <td id="head-S-row-ab{position()}"><b>S</b></td>
                                            <td id="column1-7-2yz-cs-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')][contains(., 'C')]] => count()"/></td>
                                            <td id="column2-7-2yz-ds-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')][contains(., 'D')]] => count()"/></td>
                                            <td id="column3-7-2yz-is-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')][contains(., 'I')]] => count()"/></td>
                                            <td id="column4-7-2yz-js-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')][contains(., 'J')]] => count()"/></td>
                                            <td id="column5-7-2yz-os-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')][contains(., 'O')]] => count()"/></td>
                                            <td id="column6-7-2yz-rs-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')][contains(., 'R')]] => count()"/></td>
                                            <td id="column7-7-ab{position()}"> </td>
                                            <td id="column8-7-1yz-sw-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')][contains(., 'W')]] => count()"/></td>
                                        </tr>
                                        <tr>
                                            <td id="head-W-row-ab{position()}"><b>W</b></td>
                                            <td id="column1-8-2yz-cw-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')][contains(., 'C')]] => count()"/></td>
                                            <td id="column2-8-2yz-dw-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')][contains(., 'D')]] => count()"/></td>
                                            <td id="column3-8-2yz-iw-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')][contains(., 'I')]] => count()"/></td>
                                            <td id="column4-8-2yz-jw-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')][contains(., 'J')]] => count()"/></td>
                                            <td id="column5-8-2yz-ow-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')][contains(., 'O')]] => count()"/></td>
                                            <td id="column6-8-2yz-rw-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')][contains(., 'R')]] => count()"/></td>
                                            <td id="column7-8-2yz-sw-ab{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')][contains(., 'S')]] => count()"/></td>
                                            <td id="column8-8-ab{position()}"> </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>

</xsl:stylesheet>