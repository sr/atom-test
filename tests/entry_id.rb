xml = <<XML
<!--
Description: entry id
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <id>http://example.com/</id>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'http://example.com/', feed.entries[0].id.to_s
}
