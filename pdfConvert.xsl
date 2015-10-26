<?xml version="1.0" encoding="UTF-8"?>
  <!-- Writer : vatcharavaree.won --> 
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
    
      <!-- Set variable name acm_template to read the xml file name results-old --> 
    <xsl:variable name="acm_template" select="document('results-old.xml')" />
    <xsl:key name="resultInfo" match="contestStandings/teamStanding" use="lower-case(@teamName)" />
    
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
              <!-- Set A4 Paper Layout --> 
            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4"
                    page-height="11.7in"  page-width="8.3in" margin-top=".5in" 
                    margin-bottom=".5in" margin-left=".5in" margin-right=".5in">
                    <fo:region-body margin-bottom="1.0in"/>
                    <fo:region-after extent="1.0in"/>
                </fo:simple-page-master>   
                
            </fo:layout-master-set>
            <!-- Table Contents -->      
            <fo:page-sequence master-reference="A4">
                  
                <fo:static-content flow-name="xsl-region-after">
                    <fo:block>
                        <fo:leader leader-pattern="rule" leader-length="18cm" text-align="center"/>
                    </fo:block>
                    <fo:block text-align="left" line-height="2" font-size="7">
                        B = Bridges ,
                        G = Gas ,
                        L = Left-Shift ,
                        G = Gas ,
                        L = Left-Shift ,
                        P = Painting Code ,
                        M = Multiples ,
                        PC = Programmer City ,
                        T = Tent for WF 2016 ,
                        S = Shipping ,
                    </fo:block>
                    <fo:block text-align="left" line-height="2" font-size="7">
                        TPP = Tiles Power Pyramid ,
                        X = XOR Brush
                    </fo:block>
                </fo:static-content>
                
                <fo:flow flow-name="xsl-region-body">
                    <fo:block font-size="7pt" text-align="center">
                        <fo:table>
                            <fo:table-column column-width="10mm"/>
                            <fo:table-column column-width="33mm"/>
                            <fo:table-column column-width="10mm"/>
                            <fo:table-column column-width="12mm"/>
                            <fo:table-column column-width="10mm"/>
                            <fo:table-column column-width="10mm"/>
                            <fo:table-column column-width="10mm"/>
                            <fo:table-column column-width="10mm"/>
                            <fo:table-column column-width="10mm"/>
                            <fo:table-column column-width="10mm"/>
                            <fo:table-column column-width="10mm"/>
                            <fo:table-column column-width="10mm"/>
                            <fo:table-column column-width="10mm"/>
                            <fo:table-column column-width="10mm"/>
                            <fo:table-column column-width="10mm"/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell text-align="center" font-weight="bold" font-size="8" line-height="2">
                                        <fo:block>
                                            Rank
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell text-align="center" font-weight="bold" font-size="8" line-height="2">
                                        <fo:block>
                                            Team Name
                                        </fo:block>
                                    </fo:table-cell >
                                    
                                    <fo:table-cell text-align="center" font-weight="bold" font-size="8" line-height="2">
                                        <fo:block>
                                            Solved
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell text-align="center" font-weight="bold" font-size="8" line-height="2">
                                        <fo:block>
                                            Time
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell text-align="center" font-weight="bold" font-size="8" line-height="2">
                                        <fo:block>
                                            B
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="center" font-weight="bold" font-size="8" line-height="2">
                                        <fo:block>
                                            G
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="center" font-weight="bold" font-size="8" line-height="2">
                                        <fo:block>
                                            L
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="center" font-weight="bold" font-size="8" line-height="2">
                                        <fo:block>
                                            P
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="center" font-weight="bold" font-size="8" line-height="2">
                                        <fo:block>
                                            M
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="center" font-weight="bold" font-size="8" line-height="2">
                                        <fo:block>
                                            PC
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="center" font-weight="bold" font-size="8" line-height="2">
                                        <fo:block>
                                            T
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="center" font-weight="bold" font-size="8" line-height="2">
                                        <fo:block>
                                            S
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="center" font-weight="bold" font-size="8" line-height="2">
                                        <fo:block>
                                            TPP
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="center" font-weight="bold" font-size="8" line-height="2">
                                        <fo:block>
                                            X
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell text-align="center" font-weight="bold" font-size="8" line-height="2">
                                        <fo:block>
                                            Attempt
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                </fo:table-row>
                                <xsl:for-each select="contestStandings/teamStanding">
                                    <fo:table-row text-align="center">
                                        <xsl:variable name="team_name" select="lower-case(@teamName)" />
                                        <!-- Contents in ROW  -->
                                        <fo:table-cell text-align="center">
                                            <fo:block>
                                                <xsl:value-of select="./@rank"/>
                                            </fo:block>
                                            
                                        </fo:table-cell>
                                        <fo:table-cell text-align="center">
                                            <fo:block>
                                                <xsl:value-of select="./@teamName"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        
                                        <fo:table-cell text-align="center">
                                            <fo:block>
                                                <xsl:value-of select="./@solved"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        
                                        <fo:table-cell text-align="center">
                                            <fo:block>
                                                <xsl:value-of select="./@points"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <xsl:for-each select="$acm_template">
                                            <xsl:for-each select="key('resultInfo',$team_name)/problemSummaryInfo">
                                                <fo:table-cell text-align="center">
                                                    <fo:block>
                                                        <xsl:choose>
                                                            <xsl:when test="@solutionTime>0">
                                                                <xsl:value-of select="concat(./@attempts,'/',./@solutionTime)" />
                                                            </xsl:when>
                                                            <xsl:otherwise>
                                                                <xsl:value-of select="concat(./@attempts,'/','-')" />
                                                            </xsl:otherwise>
                                                          
                                                        </xsl:choose>
                                                    </fo:block>
                                                </fo:table-cell>
                                            </xsl:for-each>
                                        </xsl:for-each> 
                                        <fo:table-cell text-align="center">
                                            <fo:block>
                                                <xsl:value-of select="./@totalAttempts"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <!-- End Contents in ROW -->
                                    </fo:table-row>
                                </xsl:for-each>
                                
                                <fo:table-row>
                                    <fo:table-cell text-align="center">
                                        <fo:block>
                                            0
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="center">
                                        <fo:block>
                                            Attempt/Solved
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="center">
                                        <fo:block>
                                            0
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="center">
                                        <fo:block>
                                            0
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    
                                    <xsl:for-each select="$acm_template">
                                        <xsl:for-each select="contestStandings/standingsHeader/problem">
                                            <fo:table-cell text-align="center" line-height="2">
                                                <fo:block>
                                                    <xsl:value-of select="concat(./@attempts,'/',./@numberSolved)" />
                                                </fo:block>
                                            </fo:table-cell>
                                        </xsl:for-each>
                                    </xsl:for-each> 
                                    
                                    <xsl:for-each select="$acm_template">
                                        <xsl:for-each select="contestStandings/standingsHeader">
                                            <fo:table-cell text-align="center" line-height="2">
                                                <fo:block>
                                                    <xsl:value-of select="concat(./@totalAttempts,'/',./@totalSolved)" />
                                                </fo:block>
                                            </fo:table-cell>
                                        </xsl:for-each>
                                    </xsl:for-each>                                  
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <!--End TABLE -->
                        
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
            
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
