xml = <<XML
<!--
Description: feed link hreflang
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <link rel="alternate" type="text/html" title="Example title" href="http://www.example.com/" hreflang="en"/>
</feed>
XML

test = lambda { |feed|
	assert_equal 'en', feed.links[0].hreflang
}
