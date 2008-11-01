xml = <<XML
<!--
Description: entry source rights type='text'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <rights type="text">Example Atom</rights>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'text/plain', feed.entries[0].source.rights.mime_type.to_s
}
