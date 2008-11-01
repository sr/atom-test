xml = <<XML
<!--
Description: entry source title type='text'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <title type="text">Example Atom</title>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'text/plain', feed.entries[0].source.title.mime_type.to_s
}
