<xsl:stylesheet version = "1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

    <html>
        <body bgcolor="lightblue">
            <center>
                <h2>Employee Management System</h2>

                <table border="2" width="100%">
                    <tr bgcolor="lightgreen">
                        <th>ID</th>
                        <th>Employee name</th>
                        <th>Age</th>
                        <th>Salary</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Designation</th>
                        <th>Promotion</th>
                        
                    </tr>
                    <xsl:for-each select="Company/Employee">
                        <tr>
                            <td><xsl:value-of select="@empid" /></td>
                            <td><xsl:value-of select="empname" /></td>
                            <td><xsl:value-of select="empage" /></td>
                            <td><xsl:value-of select="empsalary" /></td>
                            <td><xsl:value-of select="empemail" /></td>
                            <td><xsl:value-of select="empphone" /></td>
                            <td><xsl:value-of select="empdesig" /></td> 

                            <xsl:if test="empage &gt;50">
                                <td>Associate Project manager</td>
                            </xsl:if>

                            <xsl:if test="empage &gt;40 and empage &lt; 50">
                                <td>Team lead</td>
                            </xsl:if>

                            <xsl:if test="empage &lt;40">
                                <td>Developer</td>
                            </xsl:if>

                            
                        </tr>
                    </xsl:for-each>

                </table>
            </center>
        </body>
    </html>

</xsl:template>
</xsl:stylesheet>
