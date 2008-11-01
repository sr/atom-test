xml = <<XML
<!--
Description: entries sourcelink rel='related'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <link rel="related" type="text/html" href="http://www.example.com/"/>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'related', feed.entries[0].source.links[0].rel.to_s
}
