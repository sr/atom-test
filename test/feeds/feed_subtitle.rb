xml = <<XML
<!--
Description: feed subtitle
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <subtitle>Example Atom</subtitle>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example Atom', feed.subtitle
}
