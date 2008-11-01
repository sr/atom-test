xml = <<XML
<!--
Description: entry source multiple links
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <link rel="alternate" type="application/xhtml+xml" href="http://www.example.com/"/>
  <link rel="service.post" type="application/atom+xml" href="http://www.example.com/post"/>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	links = feed.entries[0].source.links
	assert_equal 'alternate', links[0].rel.to_s
	assert_equal 'application/xhtml+xml', links[0].type.to_s
	assert_equal 'http://www.example.com/', links[0].href.to_s

	assert_equal 'service.post', links[1].rel.to_s
	assert_equal 'application/atom+xml', links[1].type.to_s
	assert_equal 'http://www.example.com/post', links[1].href.to_s
}
