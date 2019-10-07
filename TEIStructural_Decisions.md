# XML Structural Elements
For one "paragraph block", we're using the 'anonymous block' element. Our manuscripts don't technically have "paragraphs" and are essentially one long sentence, so we couldn't use the typical paragraph elements.

Example:
```
<ab>
<!-- Text in here will be one "anonymous block". We're using the ab tag instead of a <div> element 
</ab>
```

If a word is missing in one edition, use a self-closing tag or an empty reading witness. We plan to change our ODD to make it possible to use an "empty" element tag here.

**Page Breaks and Catchwords:**

We're using this system to list the page breaks and to show differences in page breaks between each edition of our document. 
```
<pb xml:id="ID" n="145" ed="S">
```
