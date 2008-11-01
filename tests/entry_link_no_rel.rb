xml = <<XML
<!--
Description: entry link rel defaults to 'alternate'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <link type="text/html" href="http://www.example.com/"/>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'alternate', feed.entries[0].links[0].rel.to_s
}
