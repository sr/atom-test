xml = <<XML
<!--
Description: entry source title content type defaults to 'text/plain'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <title>Example Atom</title>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'text/plain', feed.entries[0].source.title.mime_type
}
