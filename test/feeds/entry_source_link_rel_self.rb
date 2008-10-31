xml = <<XML
<!--
Description: entry source link rel='self'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <link rel="self" type="text/html" href="http://www.example.com/"/>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'self', feed.entries[0].source.links[0].rel
}
