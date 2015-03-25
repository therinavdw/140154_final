<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
<xsl:template match="/">
    <html>
        <head>
            <link rel="stylesheet" type="text/css"
                  href="styleAgents.css"></link>
            </head>
        
        <body>
            <div class="banner">
                 <div class="container">
                <div class="navigation">
                    <div class="navigation-info">
                    <a href="Home_page.html">Home</a><br/>
                    <a href="NewLineup.html">Lineup</a><br/>
                    <a href="FAQ.html">FAQ</a><br/>
                    <a href="Contacts_page.html">Contacts</a>  
                    </div>
                </div>
                     
                <h1>Festival Schedule</h1>
            </div>
        </div>
            
            <div class="rounded-box-info">
                <xsl:element name="table">
                    <xsl:attribute name="width">100%</xsl:attribute>
                     <xsl:element name="thead">
                        <xsl:element name="tr">
                            <xsl:element name="td"><h2>Artist</h2></xsl:element>
                             <xsl:element name="td"><h2>Profile</h2></xsl:element>
                             <xsl:element name="td"><h2>Day</h2></xsl:element> 
                             <xsl:element name="td"><h2>Starts</h2></xsl:element> 
                             <xsl:element name="td"><h2>Ends</h2></xsl:element>
                         </xsl:element>
                     </xsl:element>

                     <xsl:element name="tbody">
                      
                        <xsl:attribute name="cellpadding">4</xsl:attribute>
                         
                         <xsl:for-each select="lineup/artist">
                            <xsl:element name="tr">
                               <xsl:element name="td"><xsl:apply-templates select="name"/></xsl:element>
                               
                               <xsl:element name="td"><a href="agentOut_{@id}-output.html">Band</a></xsl:element>
                               
                                
                               <xsl:element name="td"><xsl:apply-templates select="gig/day"/></xsl:element>
                               <xsl:element name="td"><xsl:apply-templates select="gig/time/starts"/></xsl:element>
                               <xsl:element name="td"><xsl:apply-templates select="gig/time/ends"/></xsl:element>
                            </xsl:element>
                         </xsl:for-each>
                     </xsl:element>
                    </xsl:element>
                
                </div> 
              </body>
        </html>
               </xsl:template> 
    
    
    
</xsl:stylesheet>


