xml = <<XML
<!--
Description: entry source subtitle content type defaults to 'text/plain'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <subtitle>Example Atom</subtitle>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'text/plain', feed.entries[0].source.subtitle.mime_type.to_s
}
