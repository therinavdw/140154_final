<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  
  <xsl:template match="/">
      <lineup>
          <xsl:apply-templates select="lineup/artist">
            <xsl:sort select="gig/day" order="ascending" />
            <xsl:sort select="gig/time/starts" order="ascending" />
          </xsl:apply-templates>
      </lineup>
  </xsl:template>
  
  
  <xsl:template match="@*|node()">
      <xsl:copy>
          <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
  </xsl:template>
  
</xsl:stylesheet>
