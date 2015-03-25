<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    
<xsl:template match="/">
    <html>
        <body>          
            <xsl:apply-templates select="lineup"/>      
        </body>
    </html> 
</xsl:template>
    

    
<xsl:template match="lineup">
  <xsl:for-each select="artist">
    <xsl:result-document method="html" href="agentOut_{@id}-output.html">
        <html>
        <body>
        <link rel="stylesheet" type="text/css"
        href="styleAgents.css"></link>
            
            <div class="banner">
                 <div class="container">
                <div class="navigation">
                    <div class="navigation-info"><br/>
                    <a href="Home_page.html">Home</a><br/>
                    <a href="agentOutLineup.html">Lineup</a><br/>
                    <a href="FAQ.html">FAQ</a><br/>
                    <a href="Contacts_page.html">Contacts</a><br/>
                    
                    </div>
                </div>
                
               <h1>Band Profiles</h1>
            </div>
        </div>
            
           <div class="profile">
               <table width="100%">
                 <thead> 
                     <tr>
                        <td colspan="2"><h2><p><xsl:value-of select="name"/></p></h2></td>
                     </tr>
                </thead>
                   
                <tbody>
                    <tr>
                        <td>
                            <p><xsl:value-of select="genres"/><br/></p>
                            <p><xsl:value-of select="genre"/></p>
                            <p><xsl:value-of select="writeup"/></p>
                        </td>
                        <td>
                            <img  alt="Band image">
                            <xsl:attribute name="src">
                            <xsl:value-of select="photo"/>.<xsl:value-of select="photo/@format"/>
                            </xsl:attribute> 
                            </img>
                        </td>
                    </tr>
                    
                </tbody> 
               </table>
            
            </div>
         </body>
        </html>
        </xsl:result-document>
  </xsl:for-each>
</xsl:template>

    
   
    
    
</xsl:stylesheet>