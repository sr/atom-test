xml = <<XML
<!--
Description: entry source link rel defaults to 'alternate'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <link type="text/html" href="http://www.example.com/"/>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'alternate', feed.entries[0].source.links[0].rel.to_s
}
