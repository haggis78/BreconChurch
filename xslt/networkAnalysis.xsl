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
                                                <xsl:value-of select="position()"/>
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
                                            <td id="td-cs-1ab{position()}"><xsl:value-of select="(.[position()]/app[descendant::rdg/@wit[contains(., 'C')][contains(., 'I')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'C')][contains(., 'J')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'C')][contains(., 'O')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'C')][contains(., 'R')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'C')][contains(., 'S')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'C')][contains(., 'W')]])[1] => count()"/></td>
                                            <td id="td-ds-2ab{position()}"><xsl:value-of select="(.[position()]/app[descendant::rdg/@wit[contains(., 'D')][contains(., 'I')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'D')][contains(., 'J')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'D')][contains(., 'O')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'D')][contains(., 'R')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'D')][contains(., 'S')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'D')][contains(., 'W')]])[1] => count()"/></td>
                                            <td id="td-is-3ab{position()}"><xsl:value-of select="(.[position()]/app[descendant::rdg/@wit[contains(., 'I')][contains(., 'C')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'I')][contains(., 'J')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'I')][contains(., 'O')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'I')][contains(., 'R')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'I')][contains(., 'S')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'I')][contains(., 'W')]])[1] => count()"/></td>
                                            <td id="td-js-4ab{position()}"><xsl:value-of select="(.[position()]/app[descendant::rdg/@wit[contains(., 'J')][contains(., 'I')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'J')][contains(., 'C')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'J')][contains(., 'O')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'J')][contains(., 'R')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'J')][contains(., 'S')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'J')][contains(., 'W')]])[1] => count()"/></td>
                                            <td id="td-os-5ab{position()}"><xsl:value-of select="(.[position()]/app[descendant::rdg/@wit[contains(., 'O')][contains(., 'I')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'O')][contains(., 'J')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'O')][contains(., 'C')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'O')][contains(., 'R')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'O')][contains(., 'S')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'O')][contains(., 'W')]])[1] => count()"/></td>
                                            <td id="td-rs-6ab{position()}"><xsl:value-of select="(.[position()]/app[descendant::rdg/@wit[contains(., 'R')][contains(., 'I')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'R')][contains(., 'J')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'R')][contains(., 'O')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'R')][contains(., 'C')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'R')][contains(., 'S')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'R')][contains(., 'W')]])[1] => count()"/></td>
                                            <td id="td-ss-7ab{position()}"><xsl:value-of select="(.[position()]/app[descendant::rdg/@wit[contains(., 'S')][contains(., 'I')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'S')][contains(., 'J')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'S')][contains(., 'O')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'S')][contains(., 'R')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'S')][contains(., 'C')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'S')][contains(., 'W')]])[1] => count()"/></td>
                                            <td id="td-ws-8ab{position()}"><xsl:value-of select="(.[position()]/app[descendant::rdg/@wit[contains(., 'W')][contains(., 'I')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'W')][contains(., 'J')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'W')][contains(., 'O')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'W')][contains(., 'R')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'W')][contains(., 'S')]])[1] => count() + (.[position()]/app[descendant::rdg/@wit[contains(., 'W')][contains(., 'C')]])[1] => count()"/></td>
                                        </tr>
                                    </table>
                                </div>
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="500" height="500" viewBox="150 0 700 600">
                                    <g class="network-analysis">
                                        <g class="lines">
                                            <line class="1CD{position()} 2CD{position()}" id="line-CD-ab-1match1CD{position()}" x1="500" y1="50" x2="675" y2="125" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1CD{position()} 2CD{position()}" id="line-CD-ab-2match1CD{position()}" x1="500" y1="50" x2="675" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'D')]] => count()}">
                                                <title>
                                                    <xsl:text>C to D: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'D')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1CI{position()} 2CI{position()}" id="line-CI-ab-1match1CI{position()}" x1="500" y1="50" x2="750" y2="300" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1CI{position()} 2CI{position()}" id="line-CI-ab-2match1CI{position()}" x1="500" y1="50" x2="750" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'I')]] => count()}">
                                                <title>
                                                    <xsl:text>C to I: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'I')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1CJ{position()} 2CJ{position()}" id="line-CJ-ab-1match1CJ{position()}" x1="500" y1="50" x2="675" y2="475" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1CJ{position()} 2CJ{position()}" id="line-CJ-ab-2match1CJ{position()}" x1="500" y1="50" x2="675" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'J')]] => count()}">
                                                <title>
                                                    <xsl:text>C to J: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'J')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1CO{position()} 2CO{position()}" id="line-CO-ab-1match1CO{position()}" x1="500" y1="50" x2="500" y2="550" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1CO{position()} 2CO{position()}" id="line-CO-ab-2match1CO{position()}" x1="500" y1="50" x2="500" y2="550" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'O')]] => count()}">
                                                <title>
                                                    <xsl:text>C to O: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'O')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1CR{position()} 2CR{position()}" id="line-CR-ab-1match1CR{position()}" x1="500" y1="50" x2="325" y2="475" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1CR{position()} 2CR{position()}" id="line-CR-ab-2match1CR{position()}" x1="500" y1="50" x2="325" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'R')]] => count()}">
                                                <title>
                                                    <xsl:text>C to R: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'R')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1CS{position()} 2CS{position()}" id="line-CS-ab-1match1CS{position()}" x1="500" y1="50" x2="250" y2="300" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1CS{position()} 2CS{position()}" id="line-CS-ab-2match1CS{position()}" x1="500" y1="50" x2="250" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'S')]] => count()}">
                                                <title>
                                                    <xsl:text>C to S: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'S')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1CW{position()} 2CW{position()}" id="line-CW-ab-1match1CW{position()}" x1="500" y1="50" x2="325" y2="125" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1CW{position()} 2CW{position()}" id="line-CW-ab-2match1CW{position()}" x1="500" y1="50" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'C')][contains(., 'W')]] => count()}">
                                                <title>
                                                    <xsl:text>C to W: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'W')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1DI{position()} 2DI{position()}" id="line-DI-ab-1match1DI{position()}" x1="675" y1="125" x2="750" y2="300" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1DI{position()} 2DI{position()}" id="line-DI-ab-2match1DI{position()}" x1="675" y1="125" x2="750" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'D')][contains(., 'I')]] => count()}">
                                                <title>
                                                    <xsl:text>D to I: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'I')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1DJ{position()} 2DJ{position()}" id="line-DJ-ab-1match1DJ{position()}" x1="675" y1="125" x2="675" y2="475" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1DJ{position()} 2DJ{position()}" id="line-DJ-ab-2match1DJ{position()}" x1="675" y1="125" x2="675" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'D')][contains(., 'J')]] => count()}">
                                                <title>
                                                    <xsl:text>D to J: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'J')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1DO{position()} 2DO{position()}" id="line-DO-ab-1match1DO{position()}" x1="675" y1="125" x2="500" y2="550" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1DO{position()} 2DO{position()}" id="line-DO-ab-2match1DO{position()}" x1="675" y1="125" x2="500" y2="550" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'D')][contains(., 'O')]] => count()}">
                                                <title>
                                                    <xsl:text>D to O: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'O')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1DR{position()} 2DR{position()}" id="line-DR-ab-1match1DR{position()}" x1="675" y1="125" x2="325" y2="475" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1DR{position()} 2DR{position()}" id="line-DR-ab-2match1DR{position()}" x1="675" y1="125" x2="325" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'D')][contains(., 'R')]] => count()}">
                                                <title>
                                                    <xsl:text>D to R: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'R')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1DS{position()} 2DS{position()}" id="line-DS-ab-1match1DS{position()}" x1="675" y1="125" x2="250" y2="300" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1DS{position()} 2DS{position()}" id="line-DS-ab-2match1DS{position()}" x1="675" y1="125" x2="250" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'D')][contains(., 'S')]] => count()}">
                                                <title>
                                                    <xsl:text>D to S: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'S')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1DW{position()} 2DW{position()}" id="line-DW-ab-1match1DW{position()}" x1="675" y1="125" x2="325" y2="125" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1DW{position()} 2DW{position()}" id="line-DW-ab-2match1DW{position()}" x1="675" y1="125" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'D')][contains(., 'W')]] => count()}">
                                                <title>
                                                    <xsl:text>D to W: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'W')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1IJ{position()} 2IJ{position()}" id="line-IJ-ab-1match1IJ{position()}" x1="750" y1="300" x2="675" y2="475" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1IJ{position()} 2IJ{position()}" id="line-IJ-ab-2match1IJ{position()}" x1="750" y1="300" x2="675" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'I')][contains(., 'J')]] => count()}">
                                                <title>
                                                    <xsl:text>I to J: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'J')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1IO{position()} 2IO{position()}" id="line-IO-ab-1match1IO{position()}" x1="750" y1="300" x2="500" y2="550" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1IO{position()} 2IO{position()}" id="line-IO-ab-2match1IO{position()}" x1="750" y1="300" x2="500" y2="550" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'I')][contains(., 'O')]] => count()}">
                                                <title>
                                                    <xsl:text>I to O: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'O')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1IR{position()} 2IR{position()}" id="line-IR-ab-1match1IR{position()}" x1="750" y1="300" x2="325" y2="475" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1IR{position()} 2IR{position()}" id="line-IR-ab-2match1IR{position()}" x1="750" y1="300" x2="325" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'I')][contains(., 'R')]] => count()}">
                                                <title>
                                                    <xsl:text>I to R: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'R')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1IS{position()} 2IS{position()}" id="line-IS-ab-1match1IS{position()}" x1="750" y1="300" x2="250" y2="300" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1IS{position()} 2IS{position()}" id="line-IS-ab-2match1IS{position()}" x1="750" y1="300" x2="250" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'I')][contains(., 'S')]] => count()}">
                                                <title>
                                                    <xsl:text>I to S: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'S')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1IW{position()} 2IW{position()}" id="line-IW-ab-1match1IW{position()}" x1="750" y1="300" x2="325" y2="125" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1IW{position()} 2IW{position()}" id="line-IW-ab-2match1IW{position()}" x1="750" y1="300" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'I')][contains(., 'W')]] => count()}">
                                                <title>
                                                    <xsl:text>I to W: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'W')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1JO{position()} 2JO{position()}" id="line-JO-ab-1match1JO{position()}" x1="675" y1="475" x2="500" y2="550" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1JO{position()} 2JO{position()}" id="line-JO-ab-2match1JO{position()}" x1="675" y1="475" x2="500" y2="550" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'J')][contains(., 'O')]] => count()}">
                                                <title>
                                                    <xsl:text>J to O: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'O')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1JR{position()} 2JR{position()}" id="line-JR-ab-1match1JR{position()}" x1="675" y1="475" x2="325" y2="475" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1JR{position()} 2JR{position()}" id="line-JR-ab-2match1JR{position()}" x1="675" y1="475" x2="325" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'J')][contains(., 'R')]] => count()}">
                                                <title>
                                                    <xsl:text>J to R: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'R')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1JS{position()} 2JS{position()}" id="line-JS-ab-1match1JS{position()}" x1="675" y1="475" x2="250" y2="300" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1JS{position()} 2JS{position()}" id="line-JS-ab-2match1JS{position()}" x1="675" y1="475" x2="250" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'J')][contains(., 'S')]] => count()}">
                                                <title>
                                                    <xsl:text>J to S: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'S')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1JW{position()} 2JW{position()}" id="line-JW-ab-1match1JW{position()}" x1="675" y1="475" x2="325" y2="125" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1JW{position()} 2JW{position()}" id="line-JW-ab-2match1JW{position()}" x1="675" y1="475" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'J')][contains(., 'W')]] => count()}">
                                                <title>
                                                    <xsl:text>J to W: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'W')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1OR{position()} 2OR{position()}" id="line-OR-ab-1match1OR{position()}" x1="500" y1="550" x2="325" y2="475" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1OR{position()} 2OR{position()}" id="line-OR-ab-2match1OR{position()}" x1="500" y1="550" x2="325" y2="475" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'O')][contains(., 'R')]] => count()}">
                                                <title>
                                                    <xsl:text>O to R: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'R')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1OS{position()} 2OS{position()}" id="line-OS-ab-1match1OS{position()}" x1="500" y1="550" x2="250" y2="300" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1OS{position()} 2OS{position()}" id="line-OS-ab-2match1OS{position()}" x1="500" y1="550" x2="250" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'O')][contains(., 'S')]] => count()}">
                                                <title>
                                                    <xsl:text>O to S: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'S')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1OW{position()} 2OW{position()}" id="line-OW-ab-1match1OW{position()}" x1="500" y1="550" x2="325" y2="125" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1OW{position()} 2OW{position()}" id="line-OW-ab-2match1OW{position()}" x1="500" y1="550" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'O')][contains(., 'W')]] => count()}">
                                                <title>
                                                    <xsl:text>O to W: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'W')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1RS{position()} 2RS{position()}" id="line-RS-ab-1match1RS{position()}" x1="325" y1="475" x2="250" y2="300" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1RS{position()} 2RS{position()}" id="line-RS-ab-2match1RS{position()}" x1="325" y1="475" x2="250" y2="300" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'R')][contains(., 'S')]] => count()}">
                                                <title>
                                                    <xsl:text>R to S: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'S')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1RW{position()} 2RW{position()}" id="line-RW-ab-1match1RW{position()}" x1="325" y1="475" x2="325" y2="125" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1RW{position()} 2RW{position()}" id="line-RW-ab-2match1RW{position()}" x1="325" y1="475" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'R')][contains(., 'W')]] => count()}">
                                                <title>
                                                    <xsl:text>R to W: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'W')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <line class="1SW{position()} 2SW{position()}" id="line-SW-ab-1match1SW{position()}" x1="250" y1="300" x2="325" y2="125" stroke="black" stroke-width="6" opacity="0"/>
                                            <line class="1SW{position()} 2SW{position()}" id="line-SW-ab-2match1SW{position()}" x1="250" y1="300" x2="325" y2="125" stroke="black" stroke-width="{.[position()]//rdg[@wit[contains(., 'S')][contains(., 'W')]] => count()}">
                                                <title>
                                                    <xsl:text>S to W: </xsl:text>
                                                    <xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')][contains(., 'W')]] => count()"/>
                                                    <xsl:text> ABs in common</xsl:text>
                                                </title>
                                            </line>
                                            <use id="use-ab{position()}" xlink:href="line-SW-ab-match1SW{position()}"/>
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
                                            <td class="1CC{position()}" id="column1-1-ab-match1CC{position()}"> </td>
                                            <td class="1CD{position()}" id="column2-1-ab-match1CD{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'D')]] => count()"/></td>
                                            <td class="1CI{position()}" id="column3-1-ab-match1CI{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'I')]] => count()"/></td>
                                            <td class="1CJ{position()}" id="column4-1-ab-match1CJ{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'J')]] => count()"/></td>
                                            <td class="1CO{position()}" id="column5-1-ab-match1CO{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'O')]] => count()"/></td>
                                            <td class="1CR{position()}" id="column6-1-ab-match1CR{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'R')]] => count()"/></td>
                                            <td class="1CS{position()}" id="column7-1-ab-match1CS{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'S')]] => count()"/></td>
                                            <td class="1CW{position()}" id="column8-1-ab-match1CW{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'W')]] => count()"/></td>
                                        </tr>
                                        <tr>
                                            <td id="head-D-row-ab{position()}"><b>D</b></td>
                                            <td class="2CD{position()}" id="column1-2-ab-match2CD{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'C')]] => count()"/></td>
                                            <td class="1DD{position()}" id="column2-2-ab-match1DD{position()}"> </td>
                                            <td class="1DI{position()}" id="column3-2-ab-match1DI{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'I')]] => count()"/></td>
                                            <td class="1DJ{position()}" id="column4-2-ab-match1DJ{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'J')]] => count()"/></td>
                                            <td class="1DO{position()}" id="column5-2-ab-match1DO{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'O')]] => count()"/></td>
                                            <td class="1DR{position()}" id="column6-2-ab-match1DR{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'R')]] => count()"/></td>
                                            <td class="1DS{position()}" id="column7-2-ab-match1DS{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'S')]] => count()"/></td>
                                            <td class="1DW{position()}" id="column8-2-ab-match1DW{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'W')]] => count()"/></td>
                                        </tr>
                                        <tr>
                                            <td id="head-I-row-ab{position()}"><b>I</b></td>
                                            <td class="2CI{position()}" id="column1-3-ab-match2CI{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'C')]] => count()"/></td>
                                            <td class="2DI{position()}" id="column2-3-ab-match2DI{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'D')]] => count()"/></td>
                                            <td class="1II{position()}" id="column3-3-ab-match1II{position()}"> </td>
                                            <td class="1IJ{position()}" id="column4-3-ab-match1IJ{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'J')]] => count()"/></td>
                                            <td class="1IO{position()}" id="column5-3-ab-match1IO{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'O')]] => count()"/></td>
                                            <td class="1IR{position()}" id="column6-3-ab-match1IR{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'R')]] => count()"/></td>
                                            <td class="1IS{position()}" id="column7-3-ab-match1IS{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'S')]] => count()"/></td>
                                            <td class="1IW{position()}" id="column8-3-ab-match1IW{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'W')]] => count()"/></td>
                                        </tr>
                                        <tr>
                                            <td id="head-J-row-ab{position()}"><b>J</b></td>
                                            <td class="2CJ{position()}" id="column1-4-ab-match2CJ{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'C')]] => count()"/></td>
                                            <td class="2DJ{position()}" id="column2-4-ab-match2DJ{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'D')]] => count()"/></td>
                                            <td class="2IJ{position()}" id="column3-4-ab-match2IJ{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'I')]] => count()"/></td>
                                            <td class="1JJ{position()}" id="column4-4-ab-match1JJ{position()}"> </td>
                                            <td class="1JO{position()}" id="column5-4-ab-match1JO{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'O')]] => count()"/></td>
                                            <td class="1JR{position()}" id="column6-4-ab-match1JR{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'R')]] => count()"/></td>
                                            <td class="1JS{position()}" id="column7-4-ab-match1JS{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'S')]] => count()"/></td>
                                            <td class="1JW{position()}" id="column8-4-ab-match1JW{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'W')]] => count()"/></td>
                                        </tr>
                                        <tr>
                                            <td id="head-O-row-ab{position()}"><b>O</b></td>
                                            <td class="2CO{position()}" id="column1-5-ab-match2CO{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'C')]] => count()"/></td>
                                            <td class="2DO{position()}" id="column2-5-ab-match2DO{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'D')]] => count()"/></td>
                                            <td class="2IO{position()}" id="column3-5-ab-match2IO{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'I')]] => count()"/></td>
                                            <td class="2JO{position()}" id="column4-5-ab-match2JO{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'J')]] => count()"/></td>
                                            <td class="1OO{position()}" id="column5-5-ab-match1OO{position()}"> </td>
                                            <td class="1OR{position()}" id="column6-5-ab-match1OR{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'R')]] => count()"/></td>
                                            <td class="1OS{position()}" id="column7-5-ab-match1OS{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'S')]] => count()"/></td>
                                            <td class="1OW{position()}" id="column8-5-ab-match1OW{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'W')]] => count()"/></td>
                                        </tr>
                                        <tr>
                                            <td id="head-R-row-ab{position()}"><b>R</b></td>
                                            <td class="2CR{position()}" id="column1-6-ab-match2CR{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'C')]] => count()"/></td>
                                            <td class="2DR{position()}" id="column2-6-ab-match2DR{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'D')]] => count()"/></td>
                                            <td class="2IR{position()}" id="column3-6-ab-match2IR{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'I')]] => count()"/></td>
                                            <td class="2JR{position()}" id="column4-6-ab-match2JR{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'J')]] => count()"/></td>
                                            <td class="2OR{position()}" id="column5-6-ab-match2OR{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'O')]] => count()"/></td>
                                            <td class="1RR{position()}" id="column6-6-ab-match1RR{position()}"> </td>
                                            <td class="1RS{position()}" id="column7-6-ab-match1RS{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'S')]] => count()"/></td>
                                            <td class="1RW{position()}" id="column8-6-ab-match1RW{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'W')]] => count()"/></td>
                                        </tr>
                                        <tr>
                                            <td id="head-S-row-ab{position()}"><b>S</b></td>
                                            <td class="2CS{position()}" id="column1-7-ab-match2CS{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')][contains(., 'C')]] => count()"/></td>
                                            <td class="2DS{position()}" id="column2-7-ab-match2DS{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')][contains(., 'D')]] => count()"/></td>
                                            <td class="2IS{position()}" id="column3-7-ab-match2IS{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')][contains(., 'I')]] => count()"/></td>
                                            <td class="2JS{position()}" id="column4-7-ab-match2JS{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')][contains(., 'J')]] => count()"/></td>
                                            <td class="2OS{position()}" id="column5-7-ab-match2OS{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')][contains(., 'O')]] => count()"/></td>
                                            <td class="2RS{position()}" id="column6-7-ab-match2RS{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')][contains(., 'R')]] => count()"/></td>
                                            <td class="1SS{position()}" id="column7-7-ab-match1SS{position()}"> </td>
                                            <td class="1SW{position()}" id="column8-7-ab-match1SW{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')][contains(., 'W')]] => count()"/></td>
                                        </tr>
                                        <tr>
                                            <td id="head-W-row-ab{position()}"><b>W</b></td>
                                            <td class="2CW{position()}" id="column1-8-ab-match2CW{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')][contains(., 'C')]] => count()"/></td>
                                            <td class="2DW{position()}" id="column2-8-ab-match2DW{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')][contains(., 'D')]] => count()"/></td>
                                            <td class="2IW{position()}" id="column3-8-ab-match2IW{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')][contains(., 'I')]] => count()"/></td>
                                            <td class="2JW{position()}" id="column4-8-ab-match2JW{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')][contains(., 'J')]] => count()"/></td>
                                            <td class="2OW{position()}" id="column5-8-ab-match2OW{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')][contains(., 'O')]] => count()"/></td>
                                            <td class="2RW{position()}" id="column6-8-ab-match2RW{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')][contains(., 'R')]] => count()"/></td>
                                            <td class="2SW{position()}" id="column7-8-ab-match2SW{position()}"><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'W')][contains(., 'S')]] => count()"/></td>
                                            <td class="1WW{position()}" id="column8-8-ab-match1WW{position()}"> </td>
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