xml = <<XML
<!--
Description: entry source rights content type defaults to 'text/plain'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <rights>Example Atom</rights>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'text/plain', feed.entries[0].source.rights.mime_type.to_s
}
