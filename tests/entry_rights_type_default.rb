xml = <<XML
<!--
Description: entry rights content type defaults to 'text/plain'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <rights>Example Atom</rights>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'text/plain', feed.entries[0].rights.mime_type.to_s
}
