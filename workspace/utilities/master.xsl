<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/page-title.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/time-ago.xsl"/>

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />
	
<!-- login status -->
<xsl:variable name="is-logged-in" select="/data/events/member-login-info/@logged-in"/>
<xsl:variable name="member-id" select="/data/events/member-login-info/@id"/>
<xsl:variable name="is-admin" select="/data/events/login-info/@logged-in"/>
<xsl:variable name="query-string" select="substring-after($current-path,'?')" />


<xsl:template match="/">
<html>
	<head>
		<title>
			<xsl:call-template name="page-title"/>
		</title>
		<link rel="icon" type="images/png" href="{$workspace}/images/icons/bookmark.png" />
		<link rel="stylesheet" type="text/css" media="screen" href="{$workspace}/css/styles.css" />
		<link rel="alternate" type="application/rss+xml" href="/rss/" />
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js" />
		<script type="text/javascript" src="{$workspace}/js/script.js" />
	</head>
	<body>
		<xsl:attribute name="class">
			<xsl:apply-templates mode="bodyclass"/>
		</xsl:attribute>
		<div id="masthead">
			<h1>
				<a href="{$root}"><xsl:value-of select="$website-name"/></a>
			</h1>
			<xsl:apply-templates mode="logout" />
		</div>
		<div id="package">
			<!-- <p class="date">
				<xsl:call-template name="format-date">
					<xsl:with-param name="date" select="$today"/>
					<xsl:with-param name="format" select="'d'"/>
				</xsl:call-template>
				<span>
					<xsl:call-template name="format-date">
						<xsl:with-param name="date" select="$today"/>
						<xsl:with-param name="format" select="'m'"/>
					</xsl:call-template>
				</span>
			</p> -->
			<div id="content">
				<div id="sidebar">
					<xsl:apply-templates mode="sidebar"/>				
				</div>
				<xsl:apply-templates/>
			</div>
		<ul id="footer">
			<li>Orchestrated by <a class="symphony" href="http://symphony-cms.com/">Symphony</a></li>
		</ul>
		</div>
	</body>
</html>

</xsl:template>

<xsl:template match="data[events/member-login-info/@logged-in = 'yes']" mode="logout">
	<a href="?member-action=logout" id="logout">
		Logout
	</a>
</xsl:template>

<xsl:template match="data" mode="logout" />

<xsl:template match="data" mode="sidebar" />
<xsl:template match="data" mode="bodyclass" />

</xsl:stylesheet>
