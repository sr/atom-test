xml = <<XML
<!--
Description: feed link rel as URI
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <link rel="http://feedparser.org/rel/test" type="text/html" href="http://www.example.com/"/>
</feed>
XML

test = lambda { |feed|
	assert_equal 'http://feedparser.org/rel/test', feed.links[0].rel
}
