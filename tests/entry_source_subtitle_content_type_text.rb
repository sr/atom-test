xml = <<XML
<!--
Description: entry source subtitle type='text'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <subtitle type="text">Example Atom</subtitle>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'text/plain', feed.entries[0].source.subtitle.mime_type.to_s
}
