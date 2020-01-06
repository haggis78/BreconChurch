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
        <xsl:result-document method="xhtml" indent="yes" href="../site/img/svg/edition-svg.svg">
            <xsl:comment>If you are looking for a specific manuscript ab, find ab[number]-[manuscript edition]-markers</xsl:comment>
            <xsl:comment>Example: Manuscript D's AB 7 string counts = ab7-d-markers</xsl:comment>
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="300" height="8700" viewBox="0 0 300 8700">
                <g transform="translate(0, 40)">
                    <g class="chart-headers">
                        <xsl:for-each select="descendant::ab">
                            <g class="ab{position()}-chart-header">
                                <rect x="10" y="{(count(preceding::app) * 20) + ((position() - 1) * 110)}" width="264" height="{count(child::app) * 20 + 70}" fill="none" stroke="black" stroke-width="2"/>
                                <a xlink:href="#ab{position()}" xlink:title="ab{position()}">
                                    <text x="135" y="{(count(preceding::app) * 20) + ((position() - 1) * 110) + 20}" text-anchor="middle">AB #<xsl:value-of select="position()"/></text>
                                </a>
                                <line x1="10" x2="274" y1="{(count(preceding::app) * 20) + ((position() - 1) * 110) + 30}" y2="{(count(preceding::app) * 20) + ((position() - 1) * 110) + 30}" stroke-width="2" stroke="black"/>
                                <line x1="10" x2="274" y1="{(count(preceding::app) * 20) + ((position() - 1) * 110) + 60}" y2="{(count(preceding::app) * 20) + ((position() - 1) * 110) + 60}" stroke-width="2" stroke="black"/>
                            </g>
                        </xsl:for-each>
                    </g>
                    <g>
                        <xsl:for-each select="$currentEdition">
                            <xsl:sort order="ascending"/>
                            <xsl:variable name="CE" as="node()" select="current()"/>
                            <xsl:for-each select="//ab[descendant::rdg/@wit[contains(., current())]]">
                                <xsl:choose>
                                    <xsl:when test="$CE = 'C'">
                                        <g class="ab{position()}-{$CE}-markers">
                                            <rect x="10" y="{(count(preceding::app) * 20) + ((position() - 1) * 110) + 30}" width="33" height="{count(child::app) * 20 + 40}" fill="#ff3ad4" opacity=".5"/>
                                            <text x="26" y="{((count(preceding::app) * 20) + 160) + ((count(preceding::ab) - 1) * 110)}" text-anchor="middle">
                                                <xsl:value-of select="(current()/text() ! normalize-space() ! tokenize(., ' ') => count()) + (current()/descendant::rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())"/>
                                            </text>
                                            <g class="{$CE}-variance-counts">
                                                <xsl:for-each select="child::app[child::rdg[@wit[contains(., $CE)]]]">
                                                    <g class="ab{count(preceding::ab) + 1}-{$CE}-variance{position()}-string-count">
                                                        <xsl:choose>
                                                            <xsl:when test="position() = (count(parent::ab/app) - 1)">
                                                                <text id="ab{count(preceding::ab) + 2}" x="26" y="{((count(preceding::app) * 20) + 190) + ((count(preceding::ab) - 1) * 110)}" text-anchor="middle">
                                                                    <xsl:value-of select="child::rdg[@wit[contains(., $CE)]] ! string-length()"/>
                                                                </text>
                                                            </xsl:when>
                                                            <xsl:otherwise>
                                                                <text x="26" y="{((count(preceding::app) * 20) + 190) + ((count(preceding::ab) - 1) * 110)}" text-anchor="middle">
                                                                    <xsl:value-of select="child::rdg[@wit[contains(., $CE)]] ! string-length()"/>
                                                                </text>
                                                            </xsl:otherwise>
                                                        </xsl:choose>
                                                        <line class="edition-lines" x1="10" x2="43" y1="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 110)}" y2="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 110)}" stroke="lightGray" stroke-width="20" opacity="0">
                                                            <xsl:choose>
                                                                <xsl:when test="string-length(child::rdg[@wit[contains(., $CE)]]) = 0">
                                                                    <title>No text available</title>
                                                                </xsl:when>
                                                                <xsl:otherwise>
                                                                    <title>
                                                                        <xsl:value-of select="child::rdg[@wit[contains(., $CE)]]"/>
                                                                    </title>
                                                                </xsl:otherwise>
                                                            </xsl:choose>
                                                        </line>
                                                    </g>
                                                </xsl:for-each>
                                            </g>
                                        </g>
                                    </xsl:when>
                                    <xsl:when test="$CE = 'D'">
                                        <g class="ab{position()}-{$CE}-markers">
                                            <rect x="43" y="{(count(preceding::app) * 20) + ((position() - 1) * 110) + 30}" width="33" height="{count(child::app) * 20 + 40}" fill="#ff3f3a" opacity=".5"/>
                                            <text x="59" y="{((count(preceding::app) * 20) + 160) + ((count(preceding::ab) - 1) * 110)}" text-anchor="middle">
                                                <xsl:value-of select="(current()/text() ! normalize-space() ! tokenize(., ' ') => count()) + (current()/descendant::rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())"/>
                                            </text>
                                            <g class="{$CE}-variance-counts">
                                                <xsl:for-each select="child::app[child::rdg[@wit[contains(., $CE)]]]">
                                                    <g class="ab{count(preceding::ab) + 1}-{$CE}-variance{position()}-string-count">
                                                        <text x="59" y="{((count(preceding::app) * 20) + 190) + ((count(preceding::ab) - 1) * 110)}" text-anchor="middle">
                                                            <xsl:value-of select="child::rdg[@wit[contains(., $CE)]] ! string-length()"/>
                                                        </text>
                                                        <line class="edition-lines" x1="43" x2="76" y1="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 110)}" y2="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 110)}" stroke="lightGray" stroke-width="20" opacity="0">
                                                            <xsl:choose>
                                                                <xsl:when test="string-length(child::rdg[@wit[contains(., $CE)]]) = 0">
                                                                    <title>No text available</title>
                                                                </xsl:when>
                                                                <xsl:otherwise>
                                                                    <title>
                                                                        <xsl:value-of select="child::rdg[@wit[contains(., $CE)]]"/>
                                                                    </title>
                                                                </xsl:otherwise>
                                                            </xsl:choose>
                                                        </line>
                                                    </g>
                                                </xsl:for-each>
                                            </g>
                                        </g>
                                    </xsl:when>
                                    <xsl:when test="$CE = 'I'">
                                        <g class="ab{position()}-{$CE}-markers">
                                            <rect x="76" y="{(count(preceding::app) * 20) + ((position() - 1) * 110) + 30}" width="33" height="{count(child::app) * 20 + 40}" fill="#ffac3a" opacity=".5"/>
                                            <text x="92" y="{((count(preceding::app) * 20) + 160) + ((count(preceding::ab) - 1) * 110)}" text-anchor="middle">
                                                <xsl:value-of select="(current()/text() ! normalize-space() ! tokenize(., ' ') => count()) + (current()/descendant::rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())"/>
                                            </text>
                                            <g class="{$CE}-variance-counts">
                                                <xsl:for-each select="child::app[child::rdg[@wit[contains(., $CE)]]]">
                                                    <g class="ab{count(preceding::ab) + 1}-{$CE}-variance{position()}-string-count">
                                                        <text x="92" y="{((count(preceding::app) * 20) + 190) + ((count(preceding::ab) - 1) * 110)}" text-anchor="middle">
                                                            <xsl:value-of select="child::rdg[@wit[contains(., $CE)]] ! string-length()"/>
                                                        </text>
                                                        <line class="edition-lines" x1="76" x2="109" y1="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 110)}" y2="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 110)}" stroke="lightGray" stroke-width="20" opacity="0">
                                                            <xsl:choose>
                                                                <xsl:when test="string-length(child::rdg[@wit[contains(., $CE)]]) = 0">
                                                                    <title>No text available</title>
                                                                </xsl:when>
                                                                <xsl:otherwise>
                                                                    <title>
                                                                        <xsl:value-of select="child::rdg[@wit[contains(., $CE)]]"/>
                                                                    </title>
                                                                </xsl:otherwise>
                                                            </xsl:choose>
                                                        </line>
                                                    </g>
                                                </xsl:for-each>
                                            </g>
                                        </g>
                                    </xsl:when>
                                    <xsl:when test="$CE = 'J'">
                                        <g class="ab{position()}-{$CE}-markers">
                                            <rect x="109" y="{(count(preceding::app) * 20) + ((position() - 1) * 110) + 30}" width="33" height="{count(child::app) * 20 + 40}" fill="#ffe83a" opacity=".5"/>
                                            <text x="125" y="{((count(preceding::app) * 20) + 160) + ((count(preceding::ab) - 1) * 110)}" text-anchor="middle">
                                                <xsl:value-of select="(current()/text() ! normalize-space() ! tokenize(., ' ') => count()) + (current()/descendant::rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())"/>
                                            </text>
                                            <g class="{$CE}-variance-counts">
                                                <xsl:for-each select="child::app[child::rdg[@wit[contains(., $CE)]]]">
                                                    <g class="ab{count(preceding::ab) + 1}-{$CE}-variance{position()}-string-count">
                                                        <text x="125" y="{((count(preceding::app) * 20) + 190) + ((count(preceding::ab) - 1) * 110)}" text-anchor="middle">
                                                            <xsl:value-of select="child::rdg[@wit[contains(., $CE)]] ! string-length()"/>
                                                        </text>
                                                        <line class="edition-lines" x1="109" x2="142" y1="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 110)}" y2="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 110)}" stroke="lightGray" stroke-width="20" opacity="0">
                                                            <xsl:choose>
                                                                <xsl:when test="string-length(child::rdg[@wit[contains(., $CE)]]) = 0">
                                                                    <title>No text available</title>
                                                                </xsl:when>
                                                                <xsl:otherwise>
                                                                    <title>
                                                                        <xsl:value-of select="child::rdg[@wit[contains(., $CE)]]"/>
                                                                    </title>
                                                                </xsl:otherwise>
                                                            </xsl:choose>
                                                        </line>
                                                    </g>
                                                </xsl:for-each>
                                            </g>
                                        </g>
                                    </xsl:when>
                                    <xsl:when test="$CE = 'O'">
                                        <g class="ab{position()}-{$CE}-markers">
                                            <rect x="142" y="{(count(preceding::app) * 20) + ((position() - 1) * 110) + 30}" width="33" height="{count(child::app) * 20 + 40}" fill="#3aff47" opacity=".5"/>
                                            <text x="158" y="{((count(preceding::app) * 20) + 160) + ((count(preceding::ab) - 1) * 110)}" text-anchor="middle">
                                                <xsl:value-of select="(current()/text() ! normalize-space() ! tokenize(., ' ') => count()) + (current()/descendant::rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())"/>
                                            </text>
                                            <g class="{$CE}-variance-counts">
                                                <xsl:for-each select="child::app[child::rdg[@wit[contains(., $CE)]]]">
                                                    <g class="ab{count(preceding::ab) + 1}-{$CE}-variance{position()}-string-count">
                                                        <text x="158" y="{((count(preceding::app) * 20) + 190) + ((count(preceding::ab) - 1) * 110)}" text-anchor="middle">
                                                            <xsl:value-of select="child::rdg[@wit[contains(., $CE)]] ! string-length()"/>
                                                        </text>
                                                        <line class="edition-lines" x1="142" x2="175" y1="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 110)}" y2="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 110)}" stroke="lightGray" stroke-width="20" opacity="0">
                                                            <xsl:choose>
                                                                <xsl:when test="string-length(child::rdg[@wit[contains(., $CE)]]) = 0">
                                                                    <title>No text available</title>
                                                                </xsl:when>
                                                                <xsl:otherwise>
                                                                    <title>
                                                                        <xsl:value-of select="child::rdg[@wit[contains(., $CE)]]"/>
                                                                    </title>
                                                                </xsl:otherwise>
                                                            </xsl:choose>
                                                        </line>
                                                    </g>
                                                </xsl:for-each>
                                            </g>
                                        </g>
                                    </xsl:when>
                                    <xsl:when test="$CE = 'R'">
                                        <g class="ab{position()}-{$CE}-markers">
                                            <rect x="175" y="{(count(preceding::app) * 20) + ((position() - 1) * 110) + 30}" width="33" height="{count(child::app) * 20 + 40}" fill="#48acff" opacity=".5"/>
                                            <text x="191" y="{((count(preceding::app) * 20) + 160) + ((count(preceding::ab) - 1) * 110)}" text-anchor="middle">
                                                <xsl:value-of select="(current()/text() ! normalize-space() ! tokenize(., ' ') => count()) + (current()/descendant::rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())"/>
                                            </text>
                                            <g class="{$CE}-variance-counts">
                                                <xsl:for-each select="child::app[child::rdg[@wit[contains(., $CE)]]]">
                                                    <g class="ab{count(preceding::ab) + 1}-{$CE}-variance{position()}-string-count">
                                                        <text x="191" y="{((count(preceding::app) * 20) + 190) + ((count(preceding::ab) - 1) * 110)}" text-anchor="middle">
                                                            <xsl:value-of select="child::rdg[@wit[contains(., $CE)]] ! string-length()"/>
                                                        </text>
                                                        <line class="edition-lines" x1="175" x2="208" y1="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 110)}" y2="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 110)}" stroke="lightGray" stroke-width="20" opacity="0">
                                                            <xsl:choose>
                                                                <xsl:when test="string-length(child::rdg[@wit[contains(., $CE)]]) = 0">
                                                                    <title>No text available</title>
                                                                </xsl:when>
                                                                <xsl:otherwise>
                                                                    <title>
                                                                        <xsl:value-of select="child::rdg[@wit[contains(., $CE)]]"/>
                                                                    </title>
                                                                </xsl:otherwise>
                                                            </xsl:choose>
                                                        </line>
                                                    </g>
                                                </xsl:for-each>
                                            </g>
                                        </g>
                                    </xsl:when>
                                    <xsl:when test="$CE = 'S'">
                                        <g class="ab{position()}-{$CE}-markers">
                                            <rect x="208" y="{(count(preceding::app) * 20) + ((position() - 1) * 110) + 30}" width="33" height="{count(child::app) * 20 + 40}" fill="#6636ff" opacity=".5"/>
                                            <text x="224" y="{((count(preceding::app) * 20) + 160) + ((count(preceding::ab) - 1) * 110)}" text-anchor="middle">
                                                <xsl:value-of select="(current()/text() ! normalize-space() ! tokenize(., ' ') => count()) + (current()/descendant::rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())"/>
                                            </text>
                                            <g class="{$CE}-variance-counts">
                                                <xsl:for-each select="child::app[child::rdg[@wit[contains(., $CE)]]]">
                                                    <g class="ab{count(preceding::ab) + 1}-{$CE}-variance{position()}-string-count">
                                                        <text x="224" y="{((count(preceding::app) * 20) + 190) + ((count(preceding::ab) - 1) * 110)}" text-anchor="middle">
                                                            <xsl:value-of select="child::rdg[@wit[contains(., $CE)]] ! string-length()"/>
                                                        </text>
                                                        <line class="edition-lines" x1="208" x2="242" y1="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 110)}" y2="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 110)}" stroke="lightGray" stroke-width="20" opacity="0">
                                                            <xsl:choose>
                                                                <xsl:when test="string-length(child::rdg[@wit[contains(., $CE)]]) = 0">
                                                                    <title>No text available</title>
                                                                </xsl:when>
                                                                <xsl:otherwise>
                                                                    <title>
                                                                        <xsl:value-of select="child::rdg[@wit[contains(., $CE)]]"/>
                                                                    </title>
                                                                </xsl:otherwise>
                                                            </xsl:choose>
                                                        </line>
                                                    </g>
                                                </xsl:for-each>
                                            </g>
                                        </g>
                                    </xsl:when>
                                    <xsl:when test="$CE = 'W'">
                                        <g class="ab{position()}-{$CE}-markers">
                                            <rect x="241" y="{(count(preceding::app) * 20) + ((position() - 1) * 110) + 30}" width="33" height="{count(child::app) * 20 + 40}" fill="#a848ff" opacity=".5"/>
                                            <text x="257" y="{((count(preceding::app) * 20) + 160) + ((count(preceding::ab) - 1) * 110)}" text-anchor="middle">
                                                <xsl:value-of select="(current()/text() ! normalize-space() ! tokenize(., ' ') => count()) + (current()/descendant::rdg[contains(@wit, $CE)]/text() ! normalize-space() ! tokenize(., ' ') => count())"/>
                                            </text>
                                            <g class="{$CE}-variance-counts">
                                                <xsl:for-each select="child::app[child::rdg[@wit[contains(., $CE)]]]">
                                                    <g class="ab{count(preceding::ab) + 1}-{$CE}-variance{position()}-string-count">
                                                        <text x="257" y="{((count(preceding::app) * 20) + 190) + ((count(preceding::ab) - 1) * 110)}" text-anchor="middle">
                                                            <xsl:value-of select="child::rdg[@wit[contains(., $CE)]] ! string-length()"/>
                                                        </text>
                                                        <line class="edition-lines" x1="242" x2="275" y1="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 110)}" y2="{((count(preceding::app) * 20) + 155) + ((count(preceding::ab) - 1) * 110)}" stroke="lightGray" stroke-width="20" opacity="0">
                                                            <xsl:choose>
                                                                <xsl:when test="string-length(child::rdg[@wit[contains(., $CE)]]) = 0">
                                                                    <title>No text available</title>
                                                                </xsl:when>
                                                                <xsl:otherwise>
                                                                    <title>
                                                                        <xsl:value-of select="child::rdg[@wit[contains(., $CE)]]"/>
                                                                    </title>
                                                                </xsl:otherwise>
                                                            </xsl:choose>
                                                        </line>
                                                    </g>
                                                </xsl:for-each>
                                            </g>
                                        </g>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:for-each>
                        </xsl:for-each>
                    </g>
                </g>
            </svg>
        </xsl:result-document>
    </xsl:template>
</xsl:stylesheet>