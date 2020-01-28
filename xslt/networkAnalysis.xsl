<?xml version="1.0" encoding="UTF-8"?>
<!-- AMA: The purpose of this XSLT is to output the an svg page that shows the variances between all editions page. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">

    <xsl:output method="xml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
    <xsl:variable name="currentEdition" as="node()+" select="descendant::note"/>
    <xsl:variable name="currentAB" as="node()+" select="descendant::ab"/>
    <xsl:template match="/">
        <xsl:result-document method="text" indent="yes" href="../site/networkAnalysis.txt">
            <xsl:for-each select="$currentAB">
                <xsl:text> AB #</xsl:text><xsl:value-of select="position()"/>
                <xsl:text> C </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> D </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'D')]] => count()"/>
                <xsl:text> C </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> I </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'I')]] => count()"/>
                <xsl:text> C </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> J </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'J')]] => count()"/>
                <xsl:text> C </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> O </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'O')]] => count()"/>
                <xsl:text> C </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> R </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'R')]] => count()"/>
                <xsl:text> C </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> S </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'S')]] => count()"/>
                <xsl:text> C </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')]] => count()"/><xsl:text> W </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'C')][contains(., 'W')]] => count()"/>
                <xsl:text> D </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')]] => count()"/><xsl:text> I </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'I')]] => count()"/>
                <xsl:text> D </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')]] => count()"/><xsl:text> J </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'J')]] => count()"/>
                <xsl:text> D </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')]] => count()"/><xsl:text> O </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'O')]] => count()"/>
                <xsl:text> D </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')]] => count()"/><xsl:text> R </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'R')]] => count()"/>
                <xsl:text> D </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')]] => count()"/><xsl:text> S </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'S')]] => count()"/>
                <xsl:text> D </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')]] => count()"/><xsl:text> W </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'D')][contains(., 'W')]] => count()"/>
                <xsl:text> I </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')]] => count()"/><xsl:text> J </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'J')]] => count()"/>
                <xsl:text> I </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')]] => count()"/><xsl:text> O </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'O')]] => count()"/>
                <xsl:text> I </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')]] => count()"/><xsl:text> R </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'R')]] => count()"/>
                <xsl:text> I </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')]] => count()"/><xsl:text> S </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'S')]] => count()"/>
                <xsl:text> I </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')]] => count()"/><xsl:text> W </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'I')][contains(., 'W')]] => count()"/>
                <xsl:text> J </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')]] => count()"/><xsl:text> O </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'O')]] => count()"/>
                <xsl:text> J </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')]] => count()"/><xsl:text> R </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'R')]] => count()"/>
                <xsl:text> J </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')]] => count()"/><xsl:text> S </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'S')]] => count()"/>
                <xsl:text> J </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')]] => count()"/><xsl:text> W </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'J')][contains(., 'W')]] => count()"/>
                <xsl:text> O </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')]] => count()"/><xsl:text> R </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'R')]] => count()"/>
                <xsl:text> O </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')]] => count()"/><xsl:text> S </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'S')]] => count()"/>
                <xsl:text> O </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')]] => count()"/><xsl:text> W </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'O')][contains(., 'W')]] => count()"/>
                <xsl:text> R </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')]] => count()"/><xsl:text> S </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'S')]] => count()"/>
                <xsl:text> R </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')]] => count()"/><xsl:text> W </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'R')][contains(., 'W')]] => count()"/>
                <xsl:text> S </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')]] => count()"/><xsl:text> W </xsl:text><xsl:value-of select=".[position()]//rdg[@wit[contains(., 'S')][contains(., 'W')]] => count()"/>
            </xsl:for-each>
        </xsl:result-document>
    </xsl:template>

</xsl:stylesheet>