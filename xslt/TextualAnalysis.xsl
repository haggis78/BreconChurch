<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>
    
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Analysis</title>
            </head>
            <body>
                <h1>Analysis of textual relationships among witnesses</h1>
<h2> Introduction and methodology</h2>
                <p>Thanks to our XML encoding, we can automatically count the frequency with which each witness, whether printed or in manuscript, agrees with each other witness. There are many different ways in which this could be calculated. We might either include or exclude morphological (spelling) differences, or might include some but not others. Where a whole phrase is present in some witnesses but absent in others, we might count that either as a single point of difference or as one difference per word.</p>
                <p>The need for absolute precision is mitigated by the fact that we are not trying to generate our stemma in a purely mathematical fashion. Our purpose here is somewhat less ambitious: to get an impressionistic sense of the accuracy of scribes, to determine which witness or witnesses are closest to the lost original, and to generate hypotheses about the relationships among the copies. Such hypotheses can then be checked in the conventional way, by looking at individual examples of variations.</p>
                <p>Procedurally, it has been simplest to count all variations noted in the XML document, whether they are matters of syntax or word choice (vel, seu, and et being interchanged, for example); certain spelling differences that we judged to be significant (especially different spellings of place names); and words or passages that are present in some witnesses and absent in others. Where a whole phrase is absent or present, we have encoded that as a single point of difference rather than counting the number of words and treating each one as an individual point of difference. By looking at the comparison of texts, the reader can quickly see the type of variations we found and identified. </p>
                <p>We elected from the start to ignore certain other differences, particularly with regard to Witness R, the earliest copy we surveyed (the Patent Roll, c. 1541). This copy, though technically post-medieval, bore certain characteristics of medieval rather than classical/Renaissance-neoclassical Latin. Two in particular stand out. The first is the use of -e- alone where classical and neoclassical Latin would use -ae- or the ligatured -æ-. (The one time the scribe of R uses -ae- is in the context of the word <em>escaetorum</em>; this is a word borrowed from medieval French, apparently imported into English legal Latin after other -ae-s had been stripped down to -e-.) The other relates to the appearence of -c- or -t- in the middle of a word, especially where followed by an -i-. Not only did many medieval scribes interchange these letters: the similarity in their appearance in many hands (the c was often made with a horizontal cross-stroke and a separate vertical stroke which may or may not include a rightward curve at the bottom, similar to the way we write a -t- today) can make it impossible for the modern reader to tell which letter the scribe even intended, or even whether the scribe himself had a clear idea in each instance which letter he was writing. In the text of R that we prepared for comparison with the later witnesses, we re-inserted the -ae- and standardized c/t distinction. This is less than ideal in reconstructing the exact morphology and syntax of the lost Letter Patent, but because these differences occur so frequently, keeping them would have cluttered the data with a great many essentially meaningless variant readings (there are over 180 -æ-s and over 400 -ti-s, which together are more than double the number of more significant variant readings). Not only would this have made numerical differences in the data appear more slight: it would have meant tripling the numer of variants marked up in our XML, multiplying the opportunities for human error.</p>
                <p>Finally, while all of the scribes used various forms of the ampersand rather than spelling out the word 'et', we rendered all of these as 'et' in our XML, as is normally considered best practice in editing medieval and early modern Latin texts. This meant ignoring the handful of times that a scribe wrote out 'et' instead.</p>
                <h2>Numerical analysis</h2>
                
                
                <ul>
                    <p>Witnesses R and W: <xsl:value-of select="count(//rdg[contains(@wit, 'R') and contains (@wit, 'W')])"></xsl:value-of></p>
                    <p>Witnesses R and S: <xsl:value-of select="count(//rdg[contains(@wit, 'R') and contains (@wit, 'S')])"></xsl:value-of></p>
                    <p>Witnesses R and J: <xsl:value-of select="count(//rdg[contains(@wit, 'R') and contains (@wit, 'J')])"></xsl:value-of></p>
                    <p>Witnesses W and S: <xsl:value-of select="count(//rdg[contains(@wit, 'W') and contains (@wit, 'S')])"></xsl:value-of></p>
                    <p>Witnesses S and J: <xsl:value-of select="count(//rdg[contains(@wit, 'S') and contains (@wit, 'J')])"></xsl:value-of></p>
                    <p>Witnesses R and C: <xsl:value-of select="count(//rdg[contains(@wit, 'R') and contains (@wit, 'C')])"></xsl:value-of></p>
                    <p>Witnesses R and D: <xsl:value-of select="count(//rdg[contains(@wit, 'R') and contains (@wit, 'D')])"></xsl:value-of></p>
                    <p>Witnesses R and I: <xsl:value-of select="count(//rdg[contains(@wit, 'R') and contains (@wit, 'I')])"></xsl:value-of></p>
                    <p>Witnesses R and O: <xsl:value-of select="count(//rdg[contains(@wit, 'R') and contains (@wit, 'O')])"></xsl:value-of></p>
                    <p>Witnesses W and C: <xsl:value-of select="count(//rdg[contains(@wit, 'W') and contains (@wit, 'C')])"></xsl:value-of></p>
                    <p>Witnesses W and D: <xsl:value-of select="count(//rdg[contains(@wit, 'W') and contains (@wit, 'D')])"></xsl:value-of></p>
                    <p>Witnesses W and I: <xsl:value-of select="count(//rdg[contains(@wit, 'W') and contains (@wit, 'I')])"></xsl:value-of></p>
                    <p>Witnesses W and O: <xsl:value-of select="count(//rdg[contains(@wit, 'W') and contains (@wit, 'O')])"></xsl:value-of></p>
                    <p>Witnesses C and D: <xsl:value-of select="count(//rdg[contains(@wit, 'C') and contains (@wit, 'D')])"></xsl:value-of></p>
                    <p>Witnesses C and I: <xsl:value-of select="count(//rdg[contains(@wit, 'C') and contains (@wit, 'I')])"></xsl:value-of></p>
                    <p>Witnesses C and O: <xsl:value-of select="count(//rdg[contains(@wit, 'C') and contains (@wit, 'O')])"></xsl:value-of></p>
                    <p>Witnesses D and I: <xsl:value-of select="count(//rdg[contains(@wit, 'D') and contains (@wit, 'I')])"></xsl:value-of></p>
                    <p>Witnesses D and O: <xsl:value-of select="count(//rdg[contains(@wit, 'D') and contains (@wit, 'O')])"></xsl:value-of></p>
                    <p>Witnesses I and O: <xsl:value-of select="count(//rdg[contains(@wit, 'I') and contains (@wit, 'O')])"></xsl:value-of></p>
                    
                    
                </ul>
                
                
                <h2>Discussion</h2>
                <p>One finding that immediately springs from this data is that W, S, and J form an independent branch of the tree. This was expected, as the citations within these printed witnesses themselves establish their dependency: S cites W, and J cites S. W is closest to R, S is a bit further, J is further still. This is exactly what we would expect: a certain amount of drift as transcription errors crept in. Since the relationship among these witnesses was already known, this serves as a successful test of the process of counting variants to indicate relationships.</p>
                
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>