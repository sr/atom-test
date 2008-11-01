xml = <<XML
<!--
Description: feed link title
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <link rel="alternate" type="text/html" title="Example title" href="http://www.example.com/"/>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example title', feed.links[0].title
}
