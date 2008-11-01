xml = <<XML
<!--
Description: entry link hreflang
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <link rel="alternate" type="text/html" title="Example title" href="http://www.example.com/" hreflang="en"/>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'en', feed.entries[0].links[0].hreflang.to_s
}
