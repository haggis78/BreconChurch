<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns="http://purl.oclc.org/dsdl/schematron">
    <ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    
    <!--  WHC 26 October 2019: This Schematron is for association with any version of the Brecon Church xml that contains the manuscript descriptions. These are initially being written in a separate file from the xml of the text but may be copied into the text xml at a later date. If done, this Schematron should follow the msdesc and be associated with that file. -->
    
    <pattern>
        <rule context="tei:repository">
            <assert test="matches(., '[A-Z]')"> The proper spelling is 'The National Archives', not 'the National Archives' </assert>
        </rule>
        <rule context="tei:provenance">
            
            <report test="tei:p/contains(., 'the National Archives')"> The proper spelling is 'The National Archives', not 'the National Archives' </report>
                    </rule>  
        
        <rule context="tei:msIdentifier/tei:repository[contains(., 'National Archives')]">
                <assert test="tei:msIdentifier/tei:settlement/text() = 'Kew'"> Though The National Archives are in Kew, and Kew is part of Greater London, the settlement should be listed as Kew, not London. </assert>
              </rule>  
        
    </pattern>
</sch:schema>