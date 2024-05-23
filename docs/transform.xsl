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
                <div class="centered">
                    <xsl:apply-templates select="html/body/*" />
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="header">
        <header>
            <h1>
                <xsl:value-of select="h1" />
            </h1>
            <nav>
                <ul>
                    <xsl:apply-templates select="nav/ul/li" />
                </ul>
            </nav>
        </header>
    </xsl:template>
    <xsl:template match="nav/ul/li">
        <li>
            <a href="{a/@href}">
                <xsl:value-of select="a" />
            </a>
        </li>
    </xsl:template>
    <xsl:template match="main">
        <main>
            <xsl:apply-templates />
        </main>
    </xsl:template>
    <xsl:template match="section">
        <section id="{@id}">
            <h2>
                <xsl:value-of select="h2" />
            </h2>
            <xsl:apply-templates select="node()[not(self::h2)]" />
        </section>
    </xsl:template>
    <xsl:template match="footer">
        <footer>
            <p>
                <xsl:value-of select="." />
            </p>
        </footer>
    </xsl:template>

    <xsl:template match="*">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
