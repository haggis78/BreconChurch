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
                <link rel="stylesheet" type="text/css" href="../../../css/brecon.css" />
                <title>Analysis</title>
            </head>
            <body>
                <h1>Analysis of textual relationships among witnesses</h1>
<h2> Introduction and methodology</h2>
                <p>No two manuscripts of a text will ever be quite identical. Each scribe will introduce variant readings, whether he is adding information, making a mistake, or trying to correct a mistake he sees in the exemplar from which he is copying. Carefully tracking these variants is central to editing a text that appears in multiple 'witnesses' (manuscripts and printings), especially where the original copy is lost. This enables the creation of a <em>stemma</em>, or family tree, showing which copies were made from which other copies, and can be used to determine which variants likely appeared in the lost original manuscript.</p> 
                <p>Thanks to our XML encoding, we can automatically count the frequency with which each witness agrees with each other witness. There are many different ways in which this could be calculated. We might either include or exclude morphological (spelling) differences, or might include some but not others. Where a whole phrase is present in some witnesses but absent in others, we might count that either as a single point of difference or as one difference per word. We could even count the differences on a letter-by-letter basis.</p>
                <p>The need for absolute precision is mitigated by the fact that we are not trying to generate our stemma in a purely mathematical fashion. Our purpose here is less ambitious: to get an impressionistic sense of the accuracy of scribes, to determine which witness or witnesses are closest to the lost original, and to generate hypotheses about the relationships among the copies. Such hypotheses can then be checked in the conventional way, by looking at individual examples of variations.</p>
                <p>Procedurally, it has been simplest to count all variations noted in the XML document, whether they are matters of syntax or word choice (<em>vel</em>, <em>seu</em>, <em>aut</em>, and <em>et</em> being interchanged, for example); certain spelling differences that we judged to be significant (especially different spellings of place names); and whole words or passages that are present in some witnesses and absent in others. Where a whole phrase is absent or present, we have encoded that as a single point of difference rather than counting the number of words or letters and treating each one as an individual point of difference. By looking at the comparison of texts, the reader can quickly see the type of variations we found and identified. </p>
                <p>We elected from the start to ignore certain other differences, particularly with regard to Witness R, the earliest copy we surveyed (the Patent Roll, c. 1541). This copy, though technically post-medieval, bore certain characteristics of medieval rather than classical/Renaissance-neoclassical Latin. Two in particular stand out. The first is the use of -e- alone where classical and neoclassical Latin would use -ae- or the ligatured -æ-. (The two times the scribe of R uses -ae- is in the context of the word <em>escaetorum</em>, a word borrowed from medieval French, and in the Welsh place-name <em>Ymaendny</em>.) The other relates to the appearence of -c- or -t- in the middle of a word, especially where followed by an -i-. Not only did many medieval scribes interchange these letters: the similarity in their appearance in many hands (the c was often made with a horizontal cross-stroke and a separate vertical stroke which may or may not include a rightward curve at the bottom, similar to the way we write a -t- today) can make it impossible for the modern reader to tell which letter the scribe even intended, or even whether the scribe himself had a clear idea in each instance which letter he was writing. In the text of R that we prepared for comparison with the later witnesses, we re-inserted the -ae- and standardized c/t distinction. This is less than ideal in reconstructing the exact morphology and syntax of the lost originl Letters Patent, but because these differences occur so frequently, keeping them would have cluttered the data with nearly 600 essentially meaningless variant readings. Not only would this have concealed the smaller number of more important variants: it would have meant tripling the number of variants marked up in our XML, multiplying the opportunities for human error.</p>
                <p>Other differences that we chose not to encode include punctuation and capitalisation. These will vary naturally from one scribe to another based on personal preferences, so they do not help us determine who copied from whom. In the case of this particular text they also do not significantly influence the meaning of the Latin text. Further, in the period around 1700, when witnesses CDIO were written, scribes used multiple letter forms, and it is not always possible to determine whether a particular form was intended by the scribe to be a majuscule (capital) or miniscule (lower-case) letter. Finally, while all of the scribes (except that of witness D) used various forms of the ampersand rather than spelling out the word 'et', this too is a matter of scribal preference, and encoding these variants in our xml file would have been both tedious and unnecessary. We rendered all of these as 'et' in our XML file, as doing so is normally considered best practice in editing medieval and early modern Latin texts. This meant ignoring the handful of times that a scribe wrote out 'et' instead.</p>
                <h2>Numerical analysis</h2>
                
                <p>To understand the relationships among the witnesses, we can first run a raw numerical analysis showing how often each witness agrees with each other witness. We can output this as a list of all possible combinations in tabular form. Each box shows the number of times each witness agrees with each other witness. Naturally, down the diagonal, each witness agrees with itself one hundred percent of the time; and the table is symmetrical across that diagonal axis.</p>
                
                <table>
                    <tr>
                       <th>Witness</th> 
                        <th>R</th>
                        <th>W</th>
                        <th>S</th>
                        <th>J</th>
                        <th>C</th>
                        <th>D</th>
                        <th>I</th>
                        <th>O</th>
                    </tr>
                    <tr>
                        <td>R</td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'R') and contains (@wit, 'R')])"></xsl:value-of></td>
                        <td style="background-color: #ffff66;"><xsl:value-of select="count(//rdg[contains(@wit, 'R') and contains (@wit, 'W')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'R') and contains (@wit, 'S')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'R') and contains (@wit, 'J')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'R') and contains (@wit, 'C')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'R') and contains (@wit, 'D')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'R') and contains (@wit, 'I')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'R') and contains (@wit, 'O')])"></xsl:value-of></td>                                            </tr>
                    <tr>
                        <td>W</td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'W') and contains (@wit, 'R')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'W') and contains (@wit, 'W')])"></xsl:value-of></td>
                        <td style="background-color: #ff66cc;"><xsl:value-of select="count(//rdg[contains(@wit, 'W') and contains (@wit, 'S')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'W') and contains (@wit, 'J')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'W') and contains (@wit, 'C')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'W') and contains (@wit, 'D')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'W') and contains (@wit, 'I')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'W') and contains (@wit, 'O')])"></xsl:value-of></td>                                            </tr>
                    <tr>
                        <td>S</td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'S') and contains (@wit, 'R')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'S') and contains (@wit, 'W')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'S') and contains (@wit, 'S')])"></xsl:value-of></td>
                        <td style="background-color: #ff66cc;"><xsl:value-of select="count(//rdg[contains(@wit, 'S') and contains (@wit, 'J')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'S') and contains (@wit, 'C')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'S') and contains (@wit, 'D')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'S') and contains (@wit, 'I')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'S') and contains (@wit, 'O')])"></xsl:value-of></td>                                            </tr>
                    <tr>
                        <td>J</td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'J') and contains (@wit, 'R')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'J') and contains (@wit, 'W')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'J') and contains (@wit, 'S')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'J') and contains (@wit, 'J')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'J') and contains (@wit, 'C')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'J') and contains (@wit, 'D')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'J') and contains (@wit, 'I')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'J') and contains (@wit, 'O')])"></xsl:value-of></td>                                            </tr>
                    <tr>
                        <td>C</td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'C') and contains (@wit, 'R')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'C') and contains (@wit, 'W')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'C') and contains (@wit, 'S')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'C') and contains (@wit, 'J')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'C') and contains (@wit, 'C')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'C') and contains (@wit, 'D')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'C') and contains (@wit, 'I')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'C') and contains (@wit, 'O')])"></xsl:value-of></td>                                            </tr>
                    <tr>
                        <td>D</td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'D') and contains (@wit, 'R')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'D') and contains (@wit, 'W')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'D') and contains (@wit, 'S')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'D') and contains (@wit, 'J')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'D') and contains (@wit, 'C')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'D') and contains (@wit, 'D')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'D') and contains (@wit, 'I')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'D') and contains (@wit, 'O')])"></xsl:value-of></td>                                            </tr>
                    <tr>
                        <td>I</td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'I') and contains (@wit, 'R')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'I') and contains (@wit, 'W')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'I') and contains (@wit, 'S')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'I') and contains (@wit, 'J')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'I') and contains (@wit, 'C')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'I') and contains (@wit, 'D')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'I') and contains (@wit, 'I')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'I') and contains (@wit, 'O')])"></xsl:value-of></td>                                            </tr>
                    <tr>
                        <td>O</td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'O') and contains (@wit, 'R')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'O') and contains (@wit, 'W')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'O') and contains (@wit, 'S')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'O') and contains (@wit, 'J')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'O') and contains (@wit, 'C')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'O') and contains (@wit, 'D')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'O') and contains (@wit, 'I')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'O') and contains (@wit, 'O')])"></xsl:value-of></td>                                            </tr>
                    
                    
                </table>
                
                
                <h2>Discussion</h2>
                <p>One finding that immediately springs from these data is that W, S, and J, the three printings, form an independent branch of the tree. This is visible in the table where the squares are highlighted in pink: where there are variations among the witnesses, W and S agree <span style="background-color: #ff66cc;"><xsl:value-of select="count(//rdg[contains(@wit, 'W') and contains (@wit, 'S')])"></xsl:value-of></span> times, and S and J agree <span style="background-color: #ff66cc;"><xsl:value-of select="count(//rdg[contains(@wit, 'S') and contains (@wit, 'J')])"></xsl:value-of></span> times.  Looking down the WSJ columns, we can see that these three agree with one another more frequently than they agree with any of the manuscript witnesses. We had predicted this in advance, as the citations within these printed witnesses themselves establish their dependency: S cites W, and J cites S. Of the three, W is closest to R, S is a bit further, J is further still. This is exactly what we would expect: a certain amount of drift as transcription errors crept in. Since the relationship among these witnesses was already known, this serves as a successful test of the process of counting variants to indicate relationships. </p>
                <p>If we measure accuracy as closeness to R, we can also judge which is the most accurate witness. This is an important question, and one that we could not have predicted in advance. We find (highlighted in yellow) that the witness that shares the most readings with R is W. These two witnesses agree <span style="background-color: #ffff66;"><xsl:value-of select="count(//rdg[contains(@wit, 'W') and contains (@wit, 'R')])"></xsl:value-of></span> times. This means that Browne Willis' transcription, however he came by it, is almost certainly the most accurate of all the later copies. Even S and J, though they import additional variants due to typographical errors (and, in one case in J, a misguided attempt to add a phrase that the author <b>thought</b> should have been there), still show more fidelity to R than <em>any</em> of the CDIO manuscripts.</p>
                <p>When we consider the later manuscript witnesses CDIO, we still do not know who was the first to include the Letters Patent establishing Christ College Brecon as an appendix to the Statutes of St Davids Cathedral, which is the main text that CDIO carry. We also do not know exactly when CDIO were copied, though all belong to the very late 1600s or first few decades of the 1700s. For all we know, the first scribe to include the Brecon document <em>could</em> have been copying it from W, which was printed in 1719, rather than copying independently from some other manuscript source; or W <em>could</em> have gotten his text from one of our known manuscripts CDIO. It appears that this did not happen. The fact that these are two distinct families of witnesses, representing a fork in the tree, shows that neither of these possibilities is true. The numerical indications in the comparative data are suggestive, but firmer evidence for this can be found in the texts, particularly in the first and last sections of the document. The three printed witnesses, WSJ, give only an abbreviated salutation, beginning 'Rex omnibus', while CDIO preserve the full salutation, beginning 'Henricus Octavus'. Each family also abbreviates the final clauses, beginning 'In cujus rei testimonium', slightly differently, preserving some but not all of the information that the lost original Letters Patent would have carried. </p>
                    <p>We still do not know exactly how Browne Willis (the author who published witness W) and the first of the CDIO scribes had access to the text: did they have transcripts of the original Letters Patent? Did they have access to the original document itself, now lost? Nonetheless, the independence of these two families of witnesses is very convenient for us, as it means that there are three different angles from which to try to reconstruct the original text. R is a file copy, prepared from X, the Warrant in Chancery, which served as the rough draft of the original Letters Patent. Willis and the earliest CDIO scribe worked independently, probably from different transcripts made from the original. Where R, W, and CDIO agree, they give us the original text; where two of the three families agree with one another, they most likely give us the original text, and the third may be an outlier; and even where there is complete disagreement, it is likely that at least one gives us the correct original reading, and careful reading of the Latin can help to narrow down the options to the most likely one.</p>
                <p>Let us look in more detail, then, at the relationships among CDIO. The principal text in these manuscripts, the Statutes of St Davids Cathedral, has never been fully edited. Any edition will have to use these manuscripts: although there are three older manuscripts in existence, all three are damaged and illegible in parts. The editor would thus have to look at manuscripts CDIO to help fill in the blanks. It will be necessary to determine the relationships among these manuscripts: which is the earliest, who copied from whom, and which is the most reliable. In fact, the whole Christ College Brecon project was conceived as a case study to get at this very question. Let us begin by simplifying our table by removing the printed witnesses WSJ.</p>
                
                
                <table>
                    <tr>
                        <th>Witness</th> 
                        <th>R</th>
                       <th>C</th>
                        <th>D</th>
                        <th>I</th>
                        <th>O</th>
                    </tr>
                    <tr>
                        <td>R</td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'R') and contains (@wit, 'R')])"></xsl:value-of></td>
                       <td><xsl:value-of select="count(//rdg[contains(@wit, 'R') and contains (@wit, 'C')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'R') and contains (@wit, 'D')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'R') and contains (@wit, 'I')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'R') and contains (@wit, 'O')])"></xsl:value-of></td>                                            </tr>
                                        <tr>
                        <td>C</td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'C') and contains (@wit, 'R')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'C') and contains (@wit, 'C')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'C') and contains (@wit, 'D')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'C') and contains (@wit, 'I')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'C') and contains (@wit, 'O')])"></xsl:value-of></td>                                            </tr>
                    <tr>
                        <td>D</td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'D') and contains (@wit, 'R')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'D') and contains (@wit, 'C')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'D') and contains (@wit, 'D')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'D') and contains (@wit, 'I')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'D') and contains (@wit, 'O')])"></xsl:value-of></td>                                            </tr>
                    <tr>
                        <td>I</td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'I') and contains (@wit, 'R')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'I') and contains (@wit, 'C')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'I') and contains (@wit, 'D')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'I') and contains (@wit, 'I')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'I') and contains (@wit, 'O')])"></xsl:value-of></td>                                            </tr>
                    <tr>
                        <td>O</td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'O') and contains (@wit, 'R')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'O') and contains (@wit, 'C')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'O') and contains (@wit, 'D')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'O') and contains (@wit, 'I')])"></xsl:value-of></td>
                        <td><xsl:value-of select="count(//rdg[contains(@wit, 'O') and contains (@wit, 'O')])"></xsl:value-of></td>                                            </tr>
                    </table>
                
                    <p>There are patterns in these data as well. Numerically, C and I are closer to R than D and O are. This means that it is  unlikely that D or O was used as an exemplar by the scribes of C or I. If we are looking for readings closest to the lost Letters Patent, we will generally do better to look at C or I than at D or O.</p>
                <p>We can find further clues to the relationships among the manuscripts. An impression from encoding the variants is that when CDIO varied from one another, it tended to be the case that CD would agree and IO would agree. This is not an absolute rule, but the data in the table offer some support. </p>
                <p>Witnesses I and O have a very high match rate, agreeing with one another on no fewer than <xsl:value-of select="count(//rdg[contains(@wit, 'O') and contains (@wit, 'I')])"></xsl:value-of> occasions. This is the closest relationship among any of the CDIO manuscripts, and it suggests that one of them was copied from the other. This is a hypothesis that can be tested by looking carefully not only at the texts encoded in the XML file but also at the manuscripts themselves.</p>
                <p>Witnesses C and D seem to go together as well, though not as closely, matching only <xsl:value-of select="count(//rdg[contains(@wit, 'D') and contains (@wit, 'C')])"></xsl:value-of> times. The best that can be said is that D matches C more often than it matches anything else. C is in fact much closer to I and O than it is to D, matching I <xsl:value-of select="count(//rdg[contains(@wit, 'I') and contains (@wit, 'C')])"></xsl:value-of> times and O <xsl:value-of select="count(//rdg[contains(@wit, 'O') and contains (@wit, 'C')])"></xsl:value-of> times. One non-textual affinity that they share is that the hands are very similar, though not identical. But the similarity suggests that one was copied from the other and that the scribe of the copy made a deliberate attempt to make his production <em>look like</em> his exemplar. </p>
                    <p>As for its accuracy, however, witness D is particularly poor. The numbers suggest this, but the experience of reading and encoding the manuscript drives it home. Out of approximately <xsl:value-of select="count(//rdg[contains(@wit, 'D')])"></xsl:value-of> variant readings, on <xsl:value-of select="count(//rdg[(contains(@wit, 'D')) and not (contains (@wit, 'R')) and not (contains (@wit, 'W')) and not (contains (@wit, 'S')) and not (contains (@wit, 'J')) and not (contains (@wit, 'C')) and not (contains (@wit, 'I')) and not (contains (@wit, 'O'))])"></xsl:value-of> occasions, D stands alone against all other witnesses. These are transcription errors. In some cases, to be sure, another scribe has stepped in and corrected the text, by inserting missing words as superscriptions with a caret (^), writing directly over the original letters, or by striking through an erroneous word. In fact, there are a few more of these than the numbers show. On several occasions where a scribe has overwritten the original text, it is not possible to determine what the offending letters underneath originally were. These instances were not encoded in our XML file. Some of the errors, such as writing 'habebebit' (a nonsense word) for 'habebit', suggest that scribe D was a poor Latinist. When it comes time to edit the Statutes of St Davids, then, witness D is unlikely to provide much useful information except its own eccentricities.</p>
                <p>What can we conclude from this? As expressed above, CO are closer to R than DI, while CD and IO seem to be pairs. Our working hypothesis, then, is that D is a copy of C and O is a copy of I. Further analysis will be needed to determine whether either C or I might have copied the other, or whether C and I are both independent copies of some other exemplar, probably now lost. Whatever their exemplar, however, we can definitively say that it was not W - Browne Willis' <em>History of Abbies</em> vol. II, published 1719 - since CDIO include several passages at the beginning and end that are not printed by Willis.</p>
                
                <h2>Stemma codicum</h2>
                <p>What follows is our hypothetical <em>stemma codicum</em>, or family tree, of the witnesses, both manuscript and in print. Relationships among CDIO are a working hypothesis. Pink circles represent the sources collated in this project.</p>
                
                <div class="content">
                    <div class="stemma-svg">
                        <svg xmlns="http://www.w3.org/2000/svg" id="stemma-svg" width="100%" viewBox="0 0 1100 550">
                            <desc><!--Stemma for Brecon website.--></desc>
                            <g transform="scale(.8) translate(0, 100)">
                                <text x="1" y="1" font-family="sans-serif" font-size="50px" fill="black">Stemma Codicum</text>
                                
                                <g>
                                    <line x1="500" y1="25" x2="1000" y2="525" stroke="black" stroke-width="2"/>
                                    <line x1="500" y1="25" x2="400" y2="125" stroke="black" stroke-width="2"/>
                                    <line x1="600" y1="125" x2="300" y2="425" stroke="black" stroke-width="2"/>
                                    <line x1="500" y1="225" x2="800" y2="525" stroke="black" stroke-width="2"/>
                                </g>
                                <g>
                                    <circle cx="500" cy="25" r="30" stroke="black" stroke-width="2" fill="white" />
                                    <text x="488" y="37" font-family="sans-serif" font-size="40px" fill="black">X</text>
                                    <text x="550" y="35" font-family="sans-serif" font-size="30px" fill="black">Warrant in Chancery: TNA C 82/776</text>
                                    <text x="595" y="60" font-family="sans-serif" font-size="30px" fill="black">(presumed to survive; not yet examined)</text>
                                </g>
                                <g>
                                    <circle cx="600" cy="125" r="30" stroke="black" stroke-width="2" fill="white" />
                                    <text x="590" y="135" font-family="sans-serif" font-size="40px" fill="black">λ</text>
                                    <text x="650" y="135" font-family="sans-serif" font-size="30px" fill="black">Letters Patent as issued (lost)</text>
                                </g>
                                <g>
                                    <circle cx="700" cy="225" r="30" stroke="black" stroke-width="2" fill="white" />
                                    <text x="692" y="235" font-family="sans-serif" font-size="40px" fill="black">τ</text>
                                    <text x="740" y="235" font-family="sans-serif" font-size="30px" fill="black">Transcript used by Willis (may be in Bodleian)</text>
                                </g>
                                <g>
                                    <circle cx="800" cy="325" r="30" stroke="black" stroke-width="2" fill="pink" />
                                    <text x="782" y="340" font-family="sans-serif" font-size="40px" fill="black">W</text>
                                    <text x="850" y="335" font-family="sans-serif" font-size="30px" fill="black">Willis, History of Abbies II</text>
                                </g>
                                <g>
                                    <circle cx="900" cy="425" r="30" stroke="black" stroke-width="2" fill="pink" />
                                    <text x="888" y="437" font-family="sans-serif" font-size="40px" fill="black">S</text>
                                    <text x="950" y="435" font-family="sans-serif" font-size="30px" fill="black">Stevens, Addns. to Dugdale</text>
                                </g>
                                <g>
                                    <circle cx="1000" cy="525" r="30" stroke="black" stroke-width="2" fill="pink" />
                                    <text x="990" y="537" font-family="sans-serif" font-size="40px" fill="black">J</text>
                                    <text x="1050" y="535" font-family="sans-serif" font-size="30px" fill="black">Jones, Hist. of Brecks.</text>
                                </g>
                                <g>
                                    <circle cx="400" cy="125" r="30" stroke="black" stroke-width="2" fill="pink" />
                                    <text x="387" y="137" font-family="sans-serif" font-size="40px" fill="black">R</text>
                                    <text x="10" y="135" font-family="sans-serif" font-size="30px" fill="black">Patent Roll: TNA C 66/709</text>
                                </g>
                                
                                <g>
                                    <circle cx="500" cy="225" r="30" stroke="black" stroke-width="2" fill="white" />
                                    <text x="490" y="237" font-family="sans-serif" font-size="40px" fill="black">?</text>
                                    <text x="60" y="235" font-family="sans-serif" font-size="30px" fill="black">(Intermediate text uncertain)</text>
                                </g>
                                <g>
                                    <circle cx="400" cy="325" r="30" stroke="black" stroke-width="2" fill="pink" />
                                    <text x="386" y="337" font-family="sans-serif" font-size="40px" fill="black">C</text>
                                    <text x="10" y="325" font-family="sans-serif" font-size="30px" fill="black">St John's Coll. Cambridge</text>
                                    <text x="220" y="355" font-family="sans-serif" font-size="30px" fill="black">MS H.12</text>
                                </g>
                                <g>
                                    <circle cx="300" cy="425" r="30" stroke="black" stroke-width="2" fill="pink" />
                                    <text x="287" y="437" font-family="sans-serif" font-size="40px" fill="black">D</text>
                                    <text x="40" y="435" font-family="sans-serif" font-size="30px" fill="black">NLW SDCh/B/23</text>
                                </g>
                                <g>
                                    <circle cx="700" cy="425" r="30" stroke="black" stroke-width="2" fill="pink" />
                                    <text x="695" y="437" font-family="sans-serif" font-size="40px" fill="black">I</text>
                                    <text x="430" y="435" font-family="sans-serif" font-size="30px" fill="black">NLW SDCh/B/25</text>
                                </g>
                                <g>
                                    <circle cx="800" cy="525" r="30" stroke="black" stroke-width="2" fill="pink" />
                                    <text x="784" y="537" font-family="sans-serif" font-size="40px" fill="black">O</text>
                                    <text x="465" y="535" font-family="sans-serif" font-size="30px" fill="black">Brit. Libr. Harley 1249</text>
                                </g>
                            </g>
                        </svg>
                    </div>
                </div>
                    
                    <p><em>-William H. Campbell</em></p>
                <p>December 2019 (last updated December 2020)</p>
                
                
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>