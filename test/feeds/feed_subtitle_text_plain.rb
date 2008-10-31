xml = <<XML
<!--
Description: feed subtitle with explicit type='text'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <subtitle type="text">Example Atom</subtitle>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example Atom', feed.subtitle
}
