<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1 style="color:#143d59" align="center">Employees Data</h1>
				<table style="color:white;width:1000px;border=1px;" align="center">
						<tr bgcolor="#143d59" align="center" style="height:30px">
							<th>Name</th>
							<th colspan="">Phones</th>
							<th>Street</th>
							<th>Bulding no.</th>
							<th>Region</th>
							<th>City</th>
							<th>Country</th>
							<th>email</th>
						</tr>
						<xsl:for-each select="employees/employee">
							<tr bgcolor="#f4b41a" align="center" style="height:30px">
								<td><xsl:value-of select="name"/></td>
								<td colspan="">
									<xsl:for-each select="phones/phone">
										<xsl:value-of select="."/>&#160;<xsl:value-of select="@type"/><br/>
									</xsl:for-each>
								</td>
									<xsl:for-each select="addresses/address">
										<td><xsl:value-of select="street"/></td>
										<td>	<xsl:value-of select="building_no"/></td>
										<td><xsl:value-of select="region"/></td>														     
										<td><xsl:value-of select="city"/></td>
										<td><xsl:value-of select="country"/></td>
									</xsl:for-each>
								<td><xsl:value-of select="email"/></td>
							</tr>
						</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>

