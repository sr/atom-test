xml = <<XML
<!--
Description: entry source logo
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <logo>http://example.com/logo.jpg</logo>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'http://example.com/logo.jpg', feed.entries[0].source.logo.to_s
}
