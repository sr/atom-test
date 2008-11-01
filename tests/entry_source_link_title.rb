xml = <<XML
<!--
Description: entry source link title
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <link rel="alternate" type="text/html" title="Example title" href="http://www.example.com/"/>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example title', feed.entries[0].source.links[0].title.to_s
}
