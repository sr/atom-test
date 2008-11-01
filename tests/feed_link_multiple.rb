xml = <<XML
<!--
Description: feed multiple links
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <link rel="alternate" type="application/xhtml+xml" href="http://www.example.com/"/>
  <link rel="service.post" type="application/atom+xml" href="http://www.example.com/post"/>
</feed>
XML

test = lambda { |feed|
	assert_equal 2, feed.links.size

	assert_equal 'alternate', feed.links[0].rel.to_s
	assert_equal 'application/xhtml+xml', feed.links[0].type.to_s
	assert_equal 'http://www.example.com/', feed.links[0].href.to_s

	assert_equal 'service.post', feed.links[1].rel.to_s
	assert_equal 'application/atom+xml', feed.links[1].type.to_s
	assert_equal 'http://www.example.com/post', feed.links[1].href.to_s
}
