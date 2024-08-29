<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:ns="http://360scheduling.com/Schema/DsSystemData.xsd"
    exclude-result-prefixes="ns">

    <!-- Identity template to copy all content by default -->
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()" />
        </xsl:copy>
    </xsl:template>

    <!-- Template to match Users nodes within the specific namespace -->
    <xsl:template match="ns:Users">
        <!-- Check if the corresponding user has the GOGHSUPERUSER or Administrator group -->
        <xsl:variable name="userId" select="ns:id" />
        <xsl:if test="//ns:User_Group[ns:user_id = $userId and (ns:group_id = 'GOGHSUPERUSER' or ns:group_id = 'Administrator')]">
            <xsl:copy>
                <xsl:apply-templates select="@* | node()" />
            </xsl:copy>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>
