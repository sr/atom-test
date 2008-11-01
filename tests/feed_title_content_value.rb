xml = <<XML
<!--
Description: feed title content value
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <title>Example Atom</title>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example Atom', feed.title.to_s
}
