<?xml version="1.0" encoding="UTF-8"?>
<!-- AMA: The purpose of this XSLT is to output the an svg page that shows the variances between all editions page. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math" xmlns="http://www.w3.org/1999/xhtml" version="3.0">

    <xsl:output method="xml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:variable name="currentEdition" as="node()+" select="descendant::note"/>
    <xsl:template match="/">
        <xsl:result-document method="html" indent="yes" href="../site/img/svg/edition-svg-bar-graphs.svg">
            <article>
                <xsl:for-each select="descendant::ab">
                    <xsl:variable name="CAB" as="node()+" select="current()"/>
                    <svg style="-webkit-user-select: none" id="ab{position()}-bar-graphs" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="1300" height="600" viewBox="0 0 1300 600">
                        <g transform="translate(20, 60) scale(.8)">
                            <g class="ab{position()}-word-count-lines">
                                <text x="20" y="-30">Anonymous Block #<xsl:value-of select="position()"/>: Word Count</text>
                                <g class="axis">
                                    <line x1="10" x2="1190" y1="10" y2="10" stroke="black" stroke-width="2"/>
                                    <line x1="10" x2="10" y1="10" y2="275" stroke="black" stroke-width="2"/>
                                </g>
                                <g class="ab{position()}-word-count-tick-marks">
                                    <g class="lines">
                                        <line x1="50" x2="50" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="90" x2="90" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="130" x2="130" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="170" x2="170" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="210" x2="210" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="250" x2="250" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="290" x2="290" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="330" x2="330" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="370" x2="370" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="410" x2="410" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="450" x2="450" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="490" x2="490" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="530" x2="530" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="570" x2="570" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="610" x2="610" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="650" x2="650" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="690" x2="690" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="730" x2="730" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="770" x2="770" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="810" x2="810" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="850" x2="850" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="890" x2="890" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="930" x2="930" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="970" x2="970" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="1010" x2="1010" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="1050" x2="1050" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="1090" x2="1090" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="1130" x2="1130" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                        <line x1="1170" x2="1170" y1="5" y2="15" stroke="black" stroke-width="2"/>
                                    </g>
                                    <g class="numbers">
                                        <text x="42" y="0">10</text>
                                        <text x="82" y="0">20</text>
                                        <text x="122" y="0">30</text>
                                        <text x="162" y="0">40</text>
                                        <text x="202" y="0">50</text>
                                        <text x="242" y="0">60</text>
                                        <text x="282" y="0">70</text>
                                        <text x="322" y="0">80</text>
                                        <text x="362" y="0">90</text>
                                        <text x="398" y="0">100</text>
                                        <text x="438" y="0">110</text>
                                        <text x="478" y="0">120</text>
                                        <text x="518" y="0">130</text>
                                        <text x="558" y="0">140</text>
                                        <text x="598" y="0">150</text>
                                        <text x="638" y="0">160</text>
                                        <text x="678" y="0">170</text>
                                        <text x="718" y="0">180</text>
                                        <text x="758" y="0">190</text>
                                        <text x="798" y="0">200</text>
                                        <text x="838" y="0">210</text>
                                        <text x="878" y="0">220</text>
                                        <text x="918" y="0">230</text>
                                        <text x="958" y="0">240</text>
                                        <text x="998" y="0">250</text>
                                        <text x="1038" y="0">260</text>
                                        <text x="1078" y="0">270</text>
                                        <text x="1118" y="0">280</text>
                                        <text x="1158" y="0">290</text>
                                    </g>
                                </g>
                            </g>
                            <g class="ab{position()}-string-count-lines">
                                <text x="20" y="310">Anonymous Block #<xsl:value-of select="position()"/>: String Count</text>
                                <g class="axis">
                                    <line x1="10" x2="1190" y1="350" y2="350" stroke="black" stroke-width="2"/>
                                    <line x1="10" x2="10" y1="350" y2="615" stroke="black" stroke-width="2"/>
                                </g>
                                <g class="ab{position()}-word-count-tick-marks">
                                    <g class="lines">
                                        <line x1="50" x2="50" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="90" x2="90" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="130" x2="130" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="170" x2="170" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="210" x2="210" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="250" x2="250" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="290" x2="290" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="330" x2="330" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="370" x2="370" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="410" x2="410" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="450" x2="450" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="490" x2="490" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="530" x2="530" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="570" x2="570" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="610" x2="610" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="650" x2="650" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="690" x2="690" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="730" x2="730" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="770" x2="770" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="810" x2="810" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="850" x2="850" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="890" x2="890" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="930" x2="930" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="970" x2="970" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="1010" x2="1010" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="1050" x2="1050" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="1090" x2="1090" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="1130" x2="1130" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                        <line x1="1170" x2="1170" y1="345" y2="355" stroke="black" stroke-width="2"/>
                                    </g>
                                    <g class="numbers">
                                        <text x="42" y="340">10</text>
                                        <text x="82" y="340">20</text>
                                        <text x="122" y="340">30</text>
                                        <text x="162" y="340">40</text>
                                        <text x="202" y="340">50</text>
                                        <text x="242" y="340">60</text>
                                        <text x="282" y="340">70</text>
                                        <text x="322" y="340">80</text>
                                        <text x="362" y="340">90</text>
                                        <text x="398" y="340">100</text>
                                        <text x="438" y="340">110</text>
                                        <text x="478" y="340">120</text>
                                        <text x="518" y="340">130</text>
                                        <text x="558" y="340">140</text>
                                        <text x="598" y="340">150</text>
                                        <text x="638" y="340">160</text>
                                        <text x="678" y="340">170</text>
                                        <text x="718" y="340">180</text>
                                        <text x="758" y="340">190</text>
                                        <text x="798" y="340">200</text>
                                        <text x="838" y="340">210</text>
                                        <text x="878" y="340">220</text>
                                        <text x="918" y="340">230</text>
                                        <text x="958" y="340">240</text>
                                        <text x="998" y="340">250</text>
                                        <text x="1038" y="340">260</text>
                                        <text x="1078" y="340">270</text>
                                        <text x="1118" y="340">280</text>
                                        <text x="1158" y="340">290</text>
                                    </g>
                                </g>
                            </g>
                            <xsl:for-each select="$currentEdition">
                                <xsl:sort order="ascending"/>
                                <xsl:variable name="CE" as="node()+" select="current()"/>
                                <xsl:choose>
                                    <xsl:when test="current() = 'C'">
                                        <g class="ab{count(preceding::ab) + 1}-{$CE}-markers">
                                            <g class="ab{count(preceding::ab) + 1}-{$CE}-word-count">
                                                <xsl:choose>
                                                    <xsl:when test="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) = 0">
                                                        <text x="20" y="{(position() * 30) + 10}">0</text>
                                                    </xsl:when>
                                                    <xsl:when test="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) > 290">
                                                        <line x1="11" x2="1190" y1="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) + 5}" stroke="#ff3ad4" stroke-width="30" opacity=".75"/>
                                                        <text x="1200" y="{(position() * 30) + 10}">
                                                            <xsl:value-of select="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count()))"/>
                                                        </text>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <line x1="11" x2="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) * 4 + 11}" y1="{(position() * 30) + 5}" y2="{(position() * 30) + 5}" stroke="#ff3ad4" stroke-width="30" opacity=".75"/>
                                                        <text x="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) * 4 + 15}" y="{(position() * 30) + 10}">
                                                            <xsl:value-of select="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count()))"/>
                                                        </text>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <line x1="5" x2="15" y1="{(position() * 30) + 5}" y2="{(position() * 30) + 5}" stroke="black" stroke-width="2"/>
                                                <text x="-15" y="{(position() * 30) + 10}">
                                                    <xsl:value-of select="current()"/>
                                                </text>
                                            </g>
                                            <g class="ab{count(preceding::ab) + 1}-{$CE}-string-count">
                                                <xsl:choose>
                                                    <xsl:when test="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) = 0">
                                                        <text x="20" y="{(position() * 30) + 350}">0</text>
                                                    </xsl:when>
                                                    <xsl:when test="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) > 290">
                                                        <line x1="11" x2="1190" y1="{(position() * 30) + 350}" y2="{(position() * 30) + 350}" stroke="#ff3ad4" stroke-width="30" opacity=".75"/>
                                                        <text x="1200" y="{(position() * 30) + 350}">
                                                            <xsl:value-of select="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length()))"/>
                                                        </text>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <line x1="11" x2="{(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) * 4 + 11}" y1="{(position() * 30) + 345}" y2="{(position() * 30) + 345}" stroke="#ff3ad4" stroke-width="30" opacity=".75"/>
                                                        <text x="{(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) * 4 + 15}" y="{(position() * 30) + 350}">
                                                            <xsl:value-of select="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length()))"/>
                                                        </text>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <line x1="5" x2="15" y1="{(position() * 30) + 345}" y2="{(position() * 30) + 345}" stroke="black" stroke-width="2"/>
                                                <text x="-15" y="{(position() * 30) + 350}">
                                                    <xsl:value-of select="current()"/>
                                                </text>
                                            </g>
                                        </g>
                                    </xsl:when>
                                    <xsl:when test="current() = 'D'">
                                        <g class="ab{count(preceding::ab) + 1}-{$CE}-markers">
                                            <g class="ab{count(preceding::ab) + 1}-{$CE}-word-count">
                                                <xsl:choose>
                                                    <xsl:when test="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) = 0">
                                                        <text x="20" y="{(position() * 30) + 10}">0</text>
                                                    </xsl:when>
                                                    <xsl:when test="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) > 290">
                                                        <line x1="11" x2="1190" y1="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) + 5}" stroke="#ff3f3a" stroke-width="30" opacity=".75"/>
                                                        <text x="1200" y="{(position() * 30) + 10}">
                                                            <xsl:value-of select="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count()))"/>
                                                        </text>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <line x1="11" x2="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, 'D')]/text() ! normalize-space() ! tokenize(., ' ') => count())) * 4 + 11}" y1="{(position() * 30) + 5}" y2="{(position() * 30) + 5}" stroke="#ff3f3a" stroke-width="30" opacity=".75"/>
                                                        <text x="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, 'D')]/text() ! normalize-space() ! tokenize(., ' ') => count())) * 4 + 15}" y="{(position() * 30) + 10}">
                                                            <xsl:value-of select="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count()))"/>
                                                        </text>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <line x1="5" x2="15" y1="{(position() * 30) + 5}" y2="{(position() * 30) + 5}" stroke="black" stroke-width="2"/>
                                                <text x="-15" y="{(position() * 30) + 10}">
                                                    <xsl:value-of select="current()"/>
                                                </text>
                                            </g>
                                            <g class="ab{count(preceding::ab) + 1}-{$CE}-string-count-markers">
                                                <xsl:choose>
                                                    <xsl:when test="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) = 0">
                                                        <text x="20" y="{(position() * 30) + 350}">0</text>
                                                    </xsl:when>
                                                    <xsl:when test="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) > 290">
                                                        <line x1="11" x2="1190" y1="{(position() * 30) + 350}" y2="{(position() * 30) + 350}" stroke="#ff3f3a" stroke-width="30" opacity=".75"/>
                                                        <text x="1200" y="{(position() * 30) + 350}">
                                                            <xsl:value-of select="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length()))"/>
                                                        </text>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <line x1="11" x2="{(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) * 4 + 11}" y1="{(position() * 30) + 345}" y2="{(position() * 30) + 345}" stroke="#ff3f3a" stroke-width="30" opacity=".75"/>
                                                        <text x="{(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) * 4 + 15}" y="{(position() * 30) + 350}">
                                                            <xsl:value-of select="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length()))"/>
                                                        </text>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <line x1="5" x2="15" y1="{(position() * 30) + 345}" y2="{(position() * 30) + 345}" stroke="black" stroke-width="2"/>
                                                <text x="-15" y="{(position() * 30) + 350}">
                                                    <xsl:value-of select="current()"/>
                                                </text>
                                            </g>
                                        </g>
                                    </xsl:when>
                                    <xsl:when test="current() = 'I'">
                                        <g class="ab{count(preceding::ab) + 1}-{$CE}-markers">
                                            <g class="ab{count(preceding::ab) + 1}-{$CE}-word-count">
                                                <xsl:choose>
                                                    <xsl:when test="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) = 0">
                                                        <text x="20" y="{(position() * 30) + 10}">0</text>
                                                    </xsl:when>
                                                    <xsl:when test="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) > 290">
                                                        <line x1="11" x2="1190" y1="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) + 5}" stroke="#ffac3a" stroke-width="30" opacity=".75"/>
                                                        <text x="1200" y="{(position() * 30) + 10}">
                                                            <xsl:value-of select="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count()))"/>
                                                        </text>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <line x1="11" x2="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) * 4 + 11}" y1="{(position() * 30) + 5}" y2="{(position() * 30) + 5}" stroke="#ffac3a" stroke-width="30" opacity=".75"/>
                                                        <text x="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) * 4 + 15}" y="{(position() * 30) + 10}">
                                                            <xsl:value-of select="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count()))"/>
                                                        </text>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <line x1="5" x2="15" y1="{(position() * 30) + 5}" y2="{(position() * 30) + 5}" stroke="black" stroke-width="2"/>
                                                <text x="-15" y="{(position() * 30) + 10}">
                                                    <xsl:value-of select="current()"/>
                                                </text>
                                            </g>
                                            <g class="ab{count(preceding::ab) + 1}-{$CE}-string-count-markers">
                                                <xsl:choose>
                                                    <xsl:when test="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) = 0">
                                                        <text x="20" y="{(position() * 30) + 350}">0</text>
                                                    </xsl:when>
                                                    <xsl:when test="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) > 290">
                                                        <line x1="11" x2="1190" y1="{(position() * 30) + 350}" y2="{(position() * 30) + 350}" stroke="#ffac3a" stroke-width="30" opacity=".75"/>
                                                        <text x="1200" y="{(position() * 30) + 350}">
                                                            <xsl:value-of select="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length()))"/>
                                                        </text>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <line x1="11" x2="{(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) * 4 + 11}" y1="{(position() * 30) + 345}" y2="{(position() * 30) + 345}" stroke="#ffac3a" stroke-width="30" opacity=".75"/>
                                                        <text x="{(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) * 4 + 15}" y="{(position() * 30) + 350}">
                                                            <xsl:value-of select="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length()))"/>
                                                        </text>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <line x1="5" x2="15" y1="{(position() * 30) + 345}" y2="{(position() * 30) + 345}" stroke="black" stroke-width="2"/>
                                                <text x="-15" y="{(position() * 30) + 350}">
                                                    <xsl:value-of select="current()"/>
                                                </text>
                                            </g>
                                        </g>
                                    </xsl:when>
                                    <xsl:when test="current() = 'J'">
                                        <g class="ab{count(preceding::ab) + 1}-{$CE}-markers">
                                            <g class="ab{count(preceding::ab) + 1}-{$CE}-word-count">
                                                <xsl:choose>
                                                    <xsl:when test="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) = 0">
                                                        <text x="20" y="{(position() * 30) + 10}">0</text>
                                                    </xsl:when>
                                                    <xsl:when test="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) > 290">
                                                        <line x1="11" x2="1190" y1="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) + 5}" stroke="#ffe83a" stroke-width="30" opacity=".75"/>
                                                        <text x="1200" y="{(position() * 30) + 10}">
                                                            <xsl:value-of select="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count()))" />
                                                        </text>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <line x1="11" x2="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) * 4 + 11}" y1="{(position() * 30) + 5}" y2="{(position() * 30) + 5}" stroke="#ffe83a" stroke-width="30" opacity=".75"/>
                                                        <text x="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) * 4 + 15}" y="{(position() * 30) + 10}">
                                                            <xsl:value-of select="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count()))" />
                                                        </text>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <line x1="5" x2="15" y1="{(position() * 30) + 5}" y2="{(position() * 30) + 5}" stroke="black" stroke-width="2"/>
                                                <text x="-15" y="{(position() * 30) + 10}">
                                                    <xsl:value-of select="current()"/>
                                                </text>
                                            </g>
                                            <g class="ab{count(preceding::ab) + 1}-{$CE}-string-count-markers">
                                                <xsl:choose>
                                                    <xsl:when test="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) = 0">
                                                        <text x="20" y="{(position() * 30) + 350}" >0</text>
                                                    </xsl:when>
                                                    <xsl:when test="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) > 290">
                                                        <line x1="11" x2="1190" y1="{(position() * 30) + 345}" y2="{(position() * 30) + 345}" stroke="#ffe83a" stroke-width="30" opacity=".75"/>
                                                        <text x="1200" y="{(position() * 30) + 345}">
                                                            <xsl:value-of select="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length()))" />
                                                        </text>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <line x1="11" x2="{(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) * 4 + 11}" y1="{(position() * 30) + 345}" y2="{(position() * 30) + 345}" stroke="#ffe83a" stroke-width="30" opacity=".75"/>
                                                        <text x="{(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) * 4 + 15}" y="{(position() * 30) + 350}">
                                                            <xsl:value-of select="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length()))" />
                                                        </text>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <line x1="5" x2="15" y1="{(position() * 30) + 345}" y2="{(position() * 30) + 345}" stroke="black" stroke-width="2"/>
                                                <text x="-15" y="{(position() * 30) + 350}">
                                                    <xsl:value-of select="current()"/>
                                                </text>
                                            </g>
                                        </g>
                                    </xsl:when>
                                    <xsl:when test="current() = 'O'">
                                        <g class="ab{count(preceding::ab) + 1}-{$CE}-markers">
                                            <g class="ab{count(preceding::ab) + 1}-{$CE}-word-count">
                                                <xsl:choose>
                                                    <xsl:when test="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) = 0">
                                                        <text x="20" y="{((position() - 1) * 30) + 10}" >0</text>
                                                    </xsl:when>
                                                    <xsl:when test="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) > 290">
                                                        <line x1="11" x2="1190" y1="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) + 5}" stroke="#3aff47" stroke-width="30" opacity=".75"/>
                                                        <text x="1200" y="{((position() - 1) * 30) + 10}">
                                                            <xsl:value-of select="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count()))" />
                                                        </text>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <line x1="11" x2="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) * 4 + 11}" y1="{((position() - 1) * 30) + 5}" y2="{((position() - 1) * 30) + 5}" stroke="#3aff47" stroke-width="30" opacity=".75"/>
                                                        <text x="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) * 4 + 15}" y="{((position() - 1) * 30) + 10}">
                                                            <xsl:value-of select="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count()))" />
                                                        </text>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <line x1="5" x2="15" y1="{((position() - 1) * 30) + 5}" y2="{((position() - 1) * 30) + 5}" stroke="black" stroke-width="2"/>
                                                <text x="-15" y="{((position() - 1) * 30) + 10}">
                                                    <xsl:value-of select="current()"/>
                                                </text>
                                            </g>
                                            <g class="ab{count(preceding::ab) + 1}-{$CE}-string-count-markers">
                                                <xsl:choose>
                                                    <xsl:when test="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) = 0">
                                                        <text x="20" y="{((position() - 1) * 30) + 350}" >0</text>
                                                    </xsl:when>
                                                    <xsl:when test="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) > 290">
                                                        <line x1="11" x2="1190" y1="{((position() - 1) * 30) + 345}" y2="{((position() - 1) * 30) + 345}" stroke="#3aff47" stroke-width="30" opacity=".75"/>
                                                        <text x="1200" y="{((position() - 1) * 30) + 350}">
                                                            <xsl:value-of select="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length()))" />
                                                        </text>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <line x1="11" x2="{(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) * 4 + 11}" y1="{((position() - 1) * 30) + 345}" y2="{((position() - 1) * 30) + 345}" stroke="#3aff47" stroke-width="30" opacity=".75"/>
                                                        <text x="{(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) * 4 + 15}" y="{((position() - 1) * 30) + 350}">
                                                            <xsl:value-of select="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length()))" />
                                                        </text>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <line x1="5" x2="15" y1="{((position() - 1) * 30) + 345}" y2="{((position() - 1) * 30) + 345}" stroke="black" stroke-width="2"/>
                                                <text x="-15" y="{((position() - 1) * 30) + 350}">
                                                    <xsl:value-of select="current()"/>
                                                </text>
                                            </g>
                                        </g>
                                    </xsl:when>
                                    <xsl:when test="current() = 'R'">
                                        <g class="ab{count(preceding::ab) + 1}-{$CE}-markers">
                                            <g class="ab{count(preceding::ab) + 1}-{$CE}-word-count">
                                                <xsl:choose>
                                                    <xsl:when test="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) = 0">
                                                        <text x="20" y="{((position() - 1) * 30) + 10}" >0</text>
                                                    </xsl:when>
                                                    <xsl:when test="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) > 290">
                                                        <line x1="11" x2="1190" y1="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) + 5}" stroke="#48acff" stroke-width="30" opacity=".75"/>
                                                        <text x="1200" y="{((position() - 1) * 30) + 10}">
                                                            <xsl:value-of select="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count()))" />
                                                        </text>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <line x1="11" x2="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) * 4 + 11}" y1="{((position() - 1) * 30) + 5}" y2="{((position() - 1) * 30) + 5}" stroke="#48acff" stroke-width="30" opacity=".75"/>
                                                        <text x="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) * 4 + 15}" y="{((position() - 1) * 30) + 10}">
                                                            <xsl:value-of select="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count()))" />
                                                        </text>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <line x1="5" x2="15" y1="{((position() - 1) * 30) + 5}" y2="{((position() - 1) * 30) + 5}" stroke="black" stroke-width="2"/>
                                                <text x="-15" y="{((position() - 1) * 30) + 10}">
                                                    <xsl:value-of select="current()"/>
                                                </text>
                                            </g>
                                            <g class="ab{count(preceding::ab) + 1}-{$CE}-string-count-markers">
                                                <xsl:choose>
                                                    <xsl:when test="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) = 0">
                                                        <text x="20" y="{((position() - 1) * 30) + 350}" >0</text>
                                                    </xsl:when>
                                                    <xsl:when test="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) > 290">
                                                        <line x1="11" x2="1190" y1="{((position() - 1) * 30) + 350}" y2="{((position() - 1) * 30) + 350}" stroke="#48acff" stroke-width="30" opacity=".75"/>
                                                        <text x="1200" y="{((position() - 1) * 30) + 350}">
                                                            <xsl:value-of select="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length()))" />
                                                        </text>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <line x1="11" x2="{(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) * 4 + 11}" y1="{((position() - 1) * 30) + 345}" y2="{((position() - 1) * 30) + 345}" stroke="#48acff" stroke-width="30" opacity=".75"/>
                                                        <text x="{(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) * 4 + 15}" y="{((position() - 1) * 30) + 350}">
                                                            <xsl:value-of select="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length()))" />
                                                        </text>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <line x1="5" x2="15" y1="{((position() - 1) * 30) + 345}" y2="{((position() - 1) * 30) + 345}" stroke="black" stroke-width="2"/>
                                                <text x="-15" y="{((position() - 1) * 30) + 350}">
                                                    <xsl:value-of select="current()"/>
                                                </text>
                                            </g>
                                        </g>
                                    </xsl:when>
                                    <xsl:when test="current() = 'S'">
                                        <g class="ab{count(preceding::ab) + 1}-{$CE}-markers">
                                            <g class="ab{count(preceding::ab) + 1}-{$CE}-word-count">
                                                <xsl:choose>
                                                    <xsl:when test="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) = 0">
                                                        <text x="20" y="{((position() - 1) * 30) + 10}" >0</text>
                                                    </xsl:when>
                                                    <xsl:when test="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) > 290">
                                                        <line x1="11" x2="1190" y1="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) + 5}" stroke="#6636ff" stroke-width="30" opacity=".75"/>
                                                        <text x="1200" y="{((position() - 1) * 30) + 10}">
                                                            <xsl:value-of select="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count()))" />
                                                        </text>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <line x1="11" x2="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) * 4 + 11}" y1="{((position() - 1) * 30) + 5}" y2="{((position() - 1) * 30) + 5}" stroke="#6636ff" stroke-width="30" opacity=".75"/>
                                                        <text x="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) * 4 + 15}" y="{((position() - 1) * 30) + 10}">
                                                            <xsl:value-of select="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count()))" />
                                                        </text>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <line x1="5" x2="15" y1="{((position() - 1) * 30) + 5}" y2="{((position() - 1) * 30) + 5}" stroke="black" stroke-width="2"/>
                                                <text x="-15" y="{((position() - 1) * 30) + 10}">
                                                    <xsl:value-of select="current()"/>
                                                </text>
                                            </g>
                                            <g class="ab{count(preceding::ab) + 1}-{$CE}-string-count-markers">
                                                <xsl:choose>
                                                    <xsl:when test="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) = 0">
                                                        <text x="20" y="{((position() - 1) * 30) + 350}" >0</text>
                                                    </xsl:when>
                                                    <xsl:when test="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) > 290">
                                                        <line x1="11" x2="1190" y1="{((position() - 1) * 30) + 350}" y2="{((position() - 1) * 30) + 350}" stroke="#6636ff" stroke-width="30" opacity=".75"/>
                                                        <text x="1200" y="{((position() - 1) * 30) + 350}">
                                                            <xsl:value-of select="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length()))" />
                                                        </text>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <line x1="11" x2="{(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) * 4 + 11}" y1="{((position() - 1) * 30) + 345}" y2="{((position() - 1) * 30) + 345}" stroke="#6636ff" stroke-width="30" opacity=".75"/>
                                                        <text x="{(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) * 4 + 15}" y="{((position() - 1) * 30) + 350}">
                                                            <xsl:value-of select="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length()))" />
                                                        </text>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <line x1="5" x2="15" y1="{((position() - 1) * 30) + 345}" y2="{((position() - 1) * 30) + 345}" stroke="black" stroke-width="2"/>
                                                <text x="-15" y="{((position() - 1) * 30) + 350}">
                                                    <xsl:value-of select="current()"/>
                                                </text>
                                            </g>
                                        </g>
                                    </xsl:when>
                                    <xsl:when test="current() = 'W'">
                                        <g class="ab{count(preceding::ab) + 1}-{$CE}-markers">
                                            <g class="ab{count(preceding::ab) + 1}-{$CE}-word-count">
                                                <xsl:choose>
                                                    <xsl:when test="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) = 0">
                                                        <text x="20" y="{((position() - 3) * 30) + 10}" >0</text>
                                                    </xsl:when>
                                                    <xsl:when test="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) > 290">
                                                        <line x1="11" x2="1190" y1="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) + 5}" stroke="#a848ff" stroke-width="30" opacity=".75"/>
                                                        <text x="1200" y="{((position() - 3) * 30) + 10}">
                                                            <xsl:value-of select="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count()))" />
                                                        </text>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <line x1="11" x2="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) * 4 + 11}" y1="{((position() - 3) * 30) + 5}" y2="{((position() - 3) * 30) + 5}" stroke="#a848ff" stroke-width="30" opacity=".75"/>
                                                        <text x="{(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())) * 4 + 15}" y="{((position() - 3) * 30) + 10}">
                                                            <xsl:value-of select="(($CAB/text() ! normalize-space() ! tokenize(., ' ') => count()) + ($CAB//rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count()))" />
                                                        </text>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <line x1="5" x2="15" y1="{((position() - 3) * 30) + 5}" y2="{((position() - 3) * 30) + 5}" stroke="black" stroke-width="2"/>
                                                <text x="-15" y="{((position() - 3) * 30) + 10}">
                                                    <xsl:value-of select="current()"/>
                                                </text>
                                            </g>
                                            <g class="ab{count(preceding::ab) + 1}-{$CE}-string-count-markers">
                                                <xsl:choose>
                                                    <xsl:when test="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) = 0">
                                                        <text x="20" y="{((position() - 3) * 30) + 350}" >0</text>
                                                    </xsl:when>
                                                    <xsl:when test="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) > 290">
                                                        <line x1="11" x2="1190" y1="{((position() - 3) * 30) + 350}" y2="{((position() - 3) * 30) + 350}" stroke="#a848ff" stroke-width="30" opacity=".75"/>
                                                        <text x="1200" y="{((position() - 3) * 30) + 350}">
                                                            <xsl:value-of select="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length()))" />
                                                        </text>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <line x1="11" x2="{(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) * 4 + 11}" y1="{((position() - 3) * 30) + 345}" y2="{((position() - 3) * 30) + 345}" stroke="#a848ff" stroke-width="30" opacity=".75"/>
                                                        <text x="{(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length())) * 4 + 15}" y="{((position() - 3) * 30) + 350}">
                                                            <xsl:value-of select="(sum($CAB//rdg[contains(@wit, $CE)]/text() ! string-length()))" />
                                                        </text>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <line x1="5" x2="15" y1="{((position() - 3) * 30) + 345}" y2="{((position() - 3) * 30) + 345}" stroke="black" stroke-width="2"/>
                                                <text x="-15" y="{((position() - 3) * 30) + 350}">
                                                    <xsl:value-of select="current()"/>
                                                </text>
                                            </g>
                                        </g>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:for-each>
                        </g>
                    </svg>
                </xsl:for-each>
            </article>
        </xsl:result-document>
    </xsl:template>
</xsl:stylesheet>
