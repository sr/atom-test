xml = <<XML
<!--
Description: feed link rel='via'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <link rel="via" type="text/html" href="http://www.example.com/"/>
</feed>
XML

test = lambda { |feed|
	assert_equal 'via', feed.links[0].rel.to_s
}
