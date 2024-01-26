<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml" exclude-result-prefixes="xs math tei" version="3.0">

    <xsl:output method="text" indent="yes" encoding="UTF-8"/>

    <!-- XSLT-Skript um aus einem TEI-Dokument eine Textdatei (.txt oder .csv) zu erstellen. 
        Als Beispiel dient "Der sterbende Cato", ein Trauerspiel von Johann Christoph Gottsched, das in DraCor (Drama Corpora Project, https://dracor.org/)
        als TEI-Download angeboten wird: https://dracor.org/ger/gottsched-der-sterbende-cato#downloads
       
       Das Ergebnis soll drei Spalten enthalten: speaker, sp (=Sprechakt), lines. 
       Die Spalte "speaker" gibt die eindeutigen Werte aus dem @who-Attribut aus, das vorangestellte # wird weggeschnitten. 
       Die Spalte "sp" zählt mit der Funktion count() die Anzahl Sprechakte (sp) pro speaker.
       Die Spalte "lines" zählt die Anzahl der gesprochenen Zeilen pro speaker. 
       
       Anschließend kann die .csv-Datei mit Python eingelesen und weiterverarbeitet werden. 
       Eine ganz schnelle Visualisierung kann mit https://app.rawgraphs.io/ erstellt werden, z.B. als  Bar Chart-->

    <xsl:template match="/">
        <xsl:text>speaker,sp,lines</xsl:text>
        <xsl:text>&#x000D;</xsl:text><!-- erzeugt eine Leerzeile -->
        <xsl:for-each-group select=".//tei:sp" group-by="substring-after(@who, '#')">
            <xsl:text>"</xsl:text>
            <xsl:value-of select="current-grouping-key()"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="count(current-group())"/>
            <xsl:text>","</xsl:text>
            <xsl:value-of select="count(current-group()//tei:l)"/>
            <xsl:text>"</xsl:text>
            <xsl:text>&#x000D;</xsl:text>
        </xsl:for-each-group>
    </xsl:template>
</xsl:stylesheet>
