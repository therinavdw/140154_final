<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
<xsl:template match="/">
        <lineup>
            <xsl:apply-templates/>
        </lineup>
</xsl:template>
    
    
    <xsl:template match="lineup/artist">
        
        <artist><name><xsl:apply-templates select="name"/></name>
        <xsl:apply-templates select="gig"/></artist>
    </xsl:template>
    
    <xsl:template match="gig">
        <gig><day><xsl:apply-templates select="day"/></day>
            <time><xsl:apply-templates select="time"/></time></gig>
    </xsl:template>
    
    <xsl:template match="time">
        <starts><xsl:apply-templates select="starts"/></starts>
        <ends><xsl:apply-templates select="ends"/></ends>
    </xsl:template>
  

    
    
</xsl:stylesheet>