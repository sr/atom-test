xml = <<XML
<!--
Description: entry source icon
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <icon>http://example.com/favicon.ico</icon>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'http://example.com/favicon.ico', feed.entries[0].source.icon
}
