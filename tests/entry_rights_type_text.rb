xml = <<XML
<!--
Description: entry rights type='text'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <rights type="text">Example Atom</rights>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'text/plain', feed.entries[0].rights.mime_type.to_s
}
