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
        <svg xmlns="http://www.w3.org/2000/svg" width="1500" height="6000">
            <g transform="translate(200, {$timeLength * $stretcher + 300})">
            <line x1="0" y1="0" x2="0" y2="-{$timeLength * $stretcher}" stroke="ForestGreen" stroke-width="3"/>
               <xsl:comment>The number of years is this:<xsl:value-of select="$timeLength"/></xsl:comment>
               <xsl:for-each select="0 to $timeLength">
                   <xsl:if test="current() mod 20 = 0"><text x="10" y="-{current() * $stretcher}" text-align="center" stroke="black"><xsl:value-of select="$lowest + current()"/></text></xsl:if>
                   
               </xsl:for-each>
                <xsl:for-each select="descendant::entry">
                    <xsl:choose>
                        <xsl:when test="@when"><circle r="5" cx="0" cy="-{(@when - $lowest) * $stretcher}" stroke="black" fill=""/><text x="60" y="-{(@when - $lowest) * $stretcher + 10}" stroke="black"><xsl:value-of select="@when"/>:<xsl:apply-templates/></text></xsl:when>
                        <xsl:when test="@from"><ellipse rx="8" ry="{(@to - @from) * $stretcher}" cx="0" cy="-{(@from - $lowest) * $stretcher}" stroke="black" fill="pink" fill-opacity="0.5"/><text x="60" y="-{(@from - $lowest) * $stretcher + 15}" stroke="black"><xsl:value-of select="@from"/> to <xsl:value-of select="@to"/>: <xsl:apply-templates/></text></xsl:when>
                    </xsl:choose>
                </xsl:for-each>
        </g>
        </svg>
    </xsl:template>
    
</xsl:stylesheet>