xml = <<XML
<!--
Description: entry source link href
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <link rel="alternate" type="text/html" href="http://www.example.com/"/>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'http://www.example.com/', feed.entries[0].source.links[0].href.to_s
}
