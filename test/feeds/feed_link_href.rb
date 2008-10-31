xml = <<XML
<!--
Description: feed link href
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <link rel="alternate" type="text/html" href="http://www.example.com/"/>
</feed>
XML

test = lambda { |feed|
	assert_equal 'http://www.example.com/', feed.links[0].href
}
