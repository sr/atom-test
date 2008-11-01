xml = <<XML
<!--
Description: entry source id
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <id>http://example.com/</id>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'http://example.com/', feed.entries[0].source.id
}
