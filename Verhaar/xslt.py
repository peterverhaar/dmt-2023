import lxml.etree as ET

xml_filename = 'EFBO19101102.xml'
xsl_filename = 'tei-html.xsl'
result_filename = 'out.html'

dom = ET.parse(xml_filename)
xslt = ET.parse(xsl_filename)
transform = ET.XSLT(xslt)
newdom = transform(dom)

out = open( result_filename , 'w', encoding = 'utf-8' )
result = ET.tostring(newdom, pretty_print=True)

result = result.decode("utf-8")
out.write( result )

out.close()
