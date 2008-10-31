xml = <<XML
<!--
Description: feed link rel='self'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <link rel="self" type="text/html" href="http://www.example.com/"/>
</feed>
XML

test = lambda { |feed|
	assert_equal 'self', feed.links[0].rel
}
