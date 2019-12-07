<?xml version="1.0" encoding="UTF-8"?>
<!-- AMA: The purpose of this XSLT is to output the an svg page that shows the variances between all editions page. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:variable name="currentEdition" as="node()+" select="descendant::note"/>
    <xsl:template match="/">
        <xsl:result-document method="xhtml" indent="yes" href="../site/html/edition-svg.html">
            <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <link rel="stylesheet" type="text/css" href="../css/brecon.css" />
                    <link rel="icon" href="../img/background/brecon-favicon.png" />
                    <script src="../javascript/comp-checkbox.js" type="text/javascript"></script>
                    <title>Brecon | Edition SVG</title>
                </head>
                <body>
                    <xsl:comment> SSI line below </xsl:comment>
                    <xsl:comment>#include virtual="ssi/ab-svg-ssi.html" </xsl:comment>
                    <div class="content">
                        <div class="ab-svg">
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="300" height="7300" viewBox="0 0 300 7300">
                                <g transform="translate(0, 40)">
                                    <xsl:for-each select="descendant::ab">
                                        <g class="draggable" style="-webkit-user-select: none">
                                            <rect x="10" y="{(count(preceding::app) * 20) + ((position() - 1) * 80)}" width="264" height="{count(child::app) * 20 + 70}" fill="none" stroke="black" stroke-width="2"/>
                                            <text x="135" y="{(count(preceding::app) * 20) + ((position() - 1) * 80) + 20}" text-anchor="middle">AB #<xsl:value-of select="position()"/></text>
                                            <line x1="10" x2="274" y1="{(count(preceding::app) * 20) + ((position() - 1) * 80) + 30}" y2="{(count(preceding::app) * 20) + ((position() - 1) * 80) + 30}" stroke-width="2" stroke="black"/>
                                            <line x1="10" x2="274" y1="{(count(preceding::app) * 20) + ((position() - 1) * 80) + 60}" y2="{(count(preceding::app) * 20) + ((position() - 1) * 80) + 60}" stroke-width="2" stroke="black"/>
                                        </g>
                                    </xsl:for-each>
                                    <g>
                                        <xsl:for-each select="$currentEdition">
                                            <xsl:sort order="ascending"/>
                                            <xsl:variable name="CE" as="node()" select="current()"/>
                                            <xsl:for-each select="//ab[descendant::rdg/@wit[contains(., current())]]">
                                                <xsl:choose>
                                                    <xsl:when test="$CE = 'C'">
                                                        <rect x="10" y="{(count(preceding::app) * 20) + ((position() - 1) * 80) + 30}" width="33" height="{count(child::app) * 20 + 40}" fill="#ff3ad4" opacity=".5"/>
                                                    </xsl:when>
                                                    <xsl:when test="$CE = 'D'">
                                                        <rect x="43" y="{(count(preceding::app) * 20) + ((position() - 1) * 80) + 30}" width="33" height="{count(child::app) * 20 + 40}" fill="#ff3f3a" opacity=".5"/>
                                                    </xsl:when>
                                                    <xsl:when test="$CE = 'I'">
                                                        <rect x="76" y="{(count(preceding::app) * 20) + ((position() - 1) * 80) + 30}" width="33" height="{count(child::app) * 20 + 40}" fill="#ffac3a" opacity=".5"/>
                                                    </xsl:when>
                                                    <xsl:when test="$CE = 'J'">
                                                        <rect x="109" y="{(count(preceding::app) * 20) + ((position() - 1) * 80) + 30}" width="33" height="{count(child::app) * 20 + 40}" fill="#ffe83a" opacity=".5"/>
                                                    </xsl:when>
                                                    <xsl:when test="$CE = 'O'">
                                                        <rect x="142" y="{(count(preceding::app) * 20) + ((position() - 1) * 80) + 30}" width="33" height="{count(child::app) * 20 + 40}" fill="#3aff47" opacity=".5"/>
                                                    </xsl:when>
                                                    <xsl:when test="$CE = 'R'">
                                                        <rect x="175" y="{(count(preceding::app) * 20) + ((position() - 1) * 80) + 30}" width="33" height="{count(child::app) * 20 + 40}" fill="#48acff" opacity=".5"/>
                                                    </xsl:when>
                                                    <xsl:when test="$CE = 'S'">
                                                        <rect x="208" y="{(count(preceding::app) * 20) + ((position() - 1) * 80) + 30}" width="33" height="{count(child::app) * 20 + 40}" fill="#6636ff" opacity=".5"/>
                                                    </xsl:when>
                                                    <xsl:when test="$CE = 'W'">
                                                        <rect x="241" y="{(count(preceding::app) * 20) + ((position() - 1) * 80) + 30}" width="33" height="{count(child::app) * 20 + 40}" fill="#a848ff" opacity=".5"/>
                                                    </xsl:when>
                                                </xsl:choose>
                                                <g>
                                                    <xsl:choose>
                                                        <xsl:when test="$CE = 'C'">
                                                            <text x="26" y="{((count(preceding::app) * 20) + 130) + ((count(preceding::ab) - 1) * 80)}" text-anchor="middle">
                                                                <xsl:value-of select="(current()/text() ! normalize-space() ! tokenize(., ' ') => count()) + (current()/descendant::rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())"/>
                                                            </text>
                                                        </xsl:when>
                                                        <xsl:when test="$CE = 'D'">
                                                            <text x="59" y="{((count(preceding::app) * 20) + 130) + ((count(preceding::ab) - 1) * 80)}" text-anchor="middle">
                                                                <xsl:value-of select="(current()/text() ! normalize-space() ! tokenize(., ' ') => count()) + (current()/descendant::rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())"/>
                                                            </text>
                                                        </xsl:when>
                                                        <xsl:when test="$CE = 'I'">
                                                            <text x="92" y="{((count(preceding::app) * 20) + 130) + ((count(preceding::ab) - 1) * 80)}" text-anchor="middle">
                                                                <xsl:value-of select="(current()/text() ! normalize-space() ! tokenize(., ' ') => count()) + (current()/descendant::rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())"/>
                                                            </text>
                                                        </xsl:when>
                                                        <xsl:when test="$CE = 'J'">
                                                            <text x="125" y="{((count(preceding::app) * 20) + 130) + ((count(preceding::ab) - 1) * 80)}" text-anchor="middle">
                                                                <xsl:value-of select="(current()/text() ! normalize-space() ! tokenize(., ' ') => count()) + (current()/descendant::rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())"/>
                                                            </text>
                                                        </xsl:when>
                                                        <xsl:when test="$CE = 'O'">
                                                            <text x="158" y="{((count(preceding::app) * 20) + 130) + ((count(preceding::ab) - 1) * 80)}" text-anchor="middle">
                                                                <xsl:value-of select="(current()/text() ! normalize-space() ! tokenize(., ' ') => count()) + (current()/descendant::rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())"/>
                                                            </text>
                                                        </xsl:when>
                                                        <xsl:when test="$CE = 'R'">
                                                            <text x="191" y="{((count(preceding::app) * 20) + 130) + ((count(preceding::ab) - 1) * 80)}" text-anchor="middle">
                                                                <xsl:value-of select="(current()/text() ! normalize-space() ! tokenize(., ' ') => count()) + (current()/descendant::rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())"/>
                                                            </text>
                                                        </xsl:when>
                                                        <xsl:when test="$CE = 'S'">
                                                            <text x="224" y="{((count(preceding::app) * 20) + 130) + ((count(preceding::ab) - 1) * 80)}" text-anchor="middle">
                                                                <xsl:value-of select="(current()/text() ! normalize-space() ! tokenize(., ' ') => count()) + (current()/descendant::rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())"/>
                                                            </text>
                                                        </xsl:when>
                                                        <xsl:when test="$CE = 'W'">
                                                            <text x="257" y="{((count(preceding::app) * 20) + 130) + ((count(preceding::ab) - 1) * 80)}" text-anchor="middle">
                                                                <xsl:value-of select="(current()/text() ! normalize-space() ! tokenize(., ' ') => count()) + (current()/descendant::rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())"/>
                                                            </text>
                                                        </xsl:when>
                                                    </xsl:choose>
                                                    <xsl:apply-templates select="child::app[child::rdg[@wit[contains(., $CE)]]]">
                                                        <xsl:with-param name="CE" as="node()" select="$CE"/>
                                                    </xsl:apply-templates>
                                                </g>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </g>
                                </g>
                            </svg>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    <xsl:template match="app">
        <xsl:param name="CE"/>
        <xsl:choose>
            <xsl:when test="$CE = 'C'">
                <xsl:choose>
                    <xsl:when test="position() = (count(parent::ab/app) - 2)">
                        <text x="26" y="{((count(preceding::app) * 20) + 160) + ((count(preceding::ab) - 1) * 80)}" text-anchor="middle" id="ab{count(preceding::ab) + 2}">
                            <xsl:value-of select="child::rdg[@wit[contains(., $CE)]] ! string-length()"/>
                        </text>
                    </xsl:when>
                    <xsl:otherwise>
                        <text x="26" y="{((count(preceding::app) * 20) + 160) + ((count(preceding::ab) - 1) * 80)}" text-anchor="middle">
                            <xsl:value-of select="child::rdg[@wit[contains(., $CE)]] ! string-length()"/>
                        </text>
                    </xsl:otherwise>
                </xsl:choose>
                <line class="edition-lines" x1="10" x2="43" y1="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 80)}" y2="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 80)}" stroke="lightGray" stroke-width="20" opacity="0">
                    <title>
                        <xsl:value-of select="child::rdg[@wit[contains(., $CE)]]"/>
                    </title>
                </line>
            </xsl:when>
            <xsl:when test="$CE = 'D'">
                <text x="59" y="{((count(preceding::app) * 20) + 160) + ((count(preceding::ab) - 1) * 80)}" text-anchor="middle">
                    <xsl:value-of select="child::rdg[@wit[contains(., $CE)]] ! string-length()"/>
                </text>
                <line class="edition-lines" x1="43" x2="76" y1="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 80)}" y2="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 80)}" stroke="lightGray" stroke-width="20" opacity="0">
                    <title>
                        <xsl:value-of select="child::rdg[@wit[contains(., $CE)]]"/>
                    </title>
                </line>
            </xsl:when>
            <xsl:when test="$CE = 'I'">
                <text x="92" y="{((count(preceding::app) * 20) + 160) + ((count(preceding::ab) - 1) * 80)}" text-anchor="middle">
                    <xsl:value-of select="child::rdg[@wit[contains(., $CE)]] ! string-length()"/>
                </text>
                <line class="edition-lines" x1="76" x2="109" y1="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 80)}" y2="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 80)}" stroke="lightGray" stroke-width="20" opacity="0">
                    <title>
                        <xsl:value-of select="child::rdg[@wit[contains(., $CE)]]"/>
                    </title>
                </line>
            </xsl:when>
            <xsl:when test="$CE = 'J'">
                <text x="125" y="{((count(preceding::app) * 20) + 160) + ((count(preceding::ab) - 1) * 80)}" text-anchor="middle">
                    <xsl:value-of select="child::rdg[@wit[contains(., $CE)]] ! string-length()"/>
                </text>
                <line class="edition-lines" x1="109" x2="142" y1="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 80)}" y2="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 80)}" stroke="lightGray" stroke-width="20" opacity="0">
                    <title>
                        <xsl:value-of select="child::rdg[@wit[contains(., $CE)]]"/>
                    </title>
                </line>
            </xsl:when>
            <xsl:when test="$CE = 'O'">
                <text x="158" y="{((count(preceding::app) * 20) + 160) + ((count(preceding::ab) - 1) * 80)}" text-anchor="middle">
                    <xsl:value-of select="child::rdg[@wit[contains(., $CE)]] ! string-length()"/>
                </text>
                <line class="edition-lines" x1="142" x2="175" y1="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 80)}" y2="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 80)}" stroke="lightGray" stroke-width="20" opacity="0">
                    <title>
                        <xsl:value-of select="child::rdg[@wit[contains(., $CE)]]"/>
                    </title>
                </line>
            </xsl:when>
            <xsl:when test="$CE = 'R'">
                <text x="191" y="{((count(preceding::app) * 20) + 160) + ((count(preceding::ab) - 1) * 80)}" text-anchor="middle">
                    <xsl:value-of select="child::rdg[@wit[contains(., $CE)]] ! string-length()"/>
                </text>
                <line class="edition-lines" x1="175" x2="208" y1="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 80)}" y2="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 80)}" stroke="lightGray" stroke-width="20" opacity="0">
                    <title>
                        <xsl:value-of select="child::rdg[@wit[contains(., $CE)]]"/>
                    </title>
                </line>
            </xsl:when>
            <xsl:when test="$CE = 'S'">
                <text x="224" y="{((count(preceding::app) * 20) + 160) + ((count(preceding::ab) - 1) * 80)}" text-anchor="middle">
                    <xsl:value-of select="child::rdg[@wit[contains(., $CE)]] ! string-length()"/>
                </text>
                <line class="edition-lines" x1="208" x2="242" y1="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 80)}" y2="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 80)}" stroke="lightGray" stroke-width="20" opacity="0">
                    <title>
                        <xsl:value-of select="child::rdg[@wit[contains(., $CE)]]"/>
                    </title>
                </line>
            </xsl:when>
            <xsl:when test="$CE = 'W'">
                <text x="257" y="{((count(preceding::app) * 20) + 160) + ((count(preceding::ab) - 1) * 80)}" text-anchor="middle">
                    <xsl:value-of select="child::rdg[@wit[contains(., $CE)]] ! string-length()"/>
                </text>
                <line class="edition-lines" x1="242" x2="275" y1="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 80)}" y2="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 80)}" stroke="lightGray" stroke-width="20" opacity="0">
                    <title>
                        <xsl:value-of select="child::rdg[@wit[contains(., $CE)]]"/>
                    </title>
                </line>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>