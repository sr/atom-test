xml = <<XML
<!--
Description: feed logo
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <logo>http://example.com/logo.jpg</logo>
</feed>
XML

test = lambda { |feed|
	assert_equal 'http://example.com/logo.jpg', feed.logo.to_s
}
