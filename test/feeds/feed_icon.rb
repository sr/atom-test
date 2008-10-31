xml = <<XML
<!--
Description: feed icon
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <icon>http://example.com/favicon.ico</icon>
</feed>
XML

test = lambda { |feed|
	assert_equal 'http://example.com/favicon.ico', feed.icon
}
