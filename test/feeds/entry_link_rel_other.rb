xml = <<XML
<!--
Description: entry link rel as URI
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <link rel="http://feedparser.org/rel/test" type="text/html" href="http://www.example.com/"/>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'http://feedparser.org/rel/test', feed.entries[0].links[0].rel
}
