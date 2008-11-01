xml = <<XML
<!--
Description: feed link rel='related'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <link rel="related" type="text/html" href="http://www.example.com/"/>
</feed>
XML

test = lambda { |feed|
	assert_equal 'related', feed.links[0].rel
}
