xml = <<XML
<!--
Description: entry source link hreflang
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <link rel="alternate" type="text/html" title="Example title" href="http://www.example.com/" hreflang="en"/>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'en', feed.entries[0].source.links[0].hreflang.to_s
}
