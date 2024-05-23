<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output indent="yes" method="html" />
    <xsl:template match="/">
        <html>
            <head>
                <xsl:apply-templates select="html/head/*" />
                <link href="style.css" rel="stylesheet" type="text/css" />
                <script src="script.js" />
            </head>
            <body>
                <div>
                    <xsl:apply-templates select="html/body/*" />
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="*">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
