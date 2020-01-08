<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    
    <xsl:output method="xml" indent="yes"/> 
    
    <xsl:variable name="stretcher" as="xs:integer" select="10"/>
    <xsl:variable name="maxDate" as="xs:integer" select="1761"/>
    <xsl:variable name="minDate"  as="xs:integer" select="1269"/>
   
    <xsl:variable name="lowest" as="xs:integer" select="1260"/>
    <xsl:variable name="timeLength" as="xs:integer" select="$maxDate - $lowest"/>
    
    <xsl:template match="/">
        <svg xmlns="http://www.w3.org/2000/svg" width="6000" height="1700">
            <g transform="translate(100, 100)">
                <line x1="0" y1="0" x2="{$timeLength * $stretcher}" y2="0" stroke="#009933" stroke-width="3"/>
               <xsl:comment>The number of years is this:<xsl:value-of select="$timeLength"/></xsl:comment>
                <xsl:comment> <xsl:for-each select="descendant::entry">
                    <xsl:choose>
                        <xsl:when test="@when"><xsl:value-of select="concat('.', 'c-t', @when, '&#10;')"/></xsl:when>
                        <xsl:when test="@from"><xsl:value-of select="concat('.', 'c-t', @from, '&#10;')"/></xsl:when>
                    </xsl:choose>
                </xsl:for-each></xsl:comment>
               <xsl:for-each select="0 to $timeLength">
                   <xsl:if test="current() mod 20 = 0"><text x="{current() * $stretcher}" y="28" text-anchor="middle" stroke="black"><xsl:value-of select="$lowest + current()"/></text></xsl:if>
                   
               </xsl:for-each>
                <xsl:for-each select="descendant::entry">
                    <xsl:choose>
                        <xsl:when test="@when"><circle r="10" cx="{(@when - $lowest) * $stretcher}" cy="0" stroke="black" id="c-t{@when}"/><foreignObject x="60" y="{(@when - $lowest) * $stretcher + 10}" stroke="black" width="auto" height="auto"><div xmlns="http://www.w3.org/1999/xhtml" class="t{@when}"><xsl:value-of select="@when"/>:<xsl:apply-templates/></div></foreignObject></xsl:when>
                        <xsl:when test="@from"><ellipse rx="{(@to - @from) * $stretcher}" ry="15" cx="{(@from - $lowest) * $stretcher}" cy="0" stroke="black" fill="pink" fill-opacity="0.5" id="c-t{@from}"/><foreignObject x="60" y="{(@from - $lowest) * $stretcher + 15}" stroke="black"  width="auto" height="auto"><div xmlns="http://www.w3.org/1999/xhtml" class="t{@from}"><xsl:value-of select="@from"/> to <xsl:value-of select="@to"/>: <xsl:apply-templates/></div></foreignObject></xsl:when>
                    </xsl:choose>
                </xsl:for-each>
        </g>
        </svg>
    </xsl:template>
    <!-- {$timeLength * $stretcher + 300} -->
        
</xsl:stylesheet>