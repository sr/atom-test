xml = <<XML
<!--
Description: feed generator name
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <generator uri="http://example.com/" version="2.65">Example generator</generator>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example generator', feed.generator.name
}
