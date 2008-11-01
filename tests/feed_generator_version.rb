xml = <<XML
<!--
Description: feed generator version
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <generator uri="http://example.com/" version="2.65">Example generator</generator>
</feed>
XML

test = lambda { |feed|
	assert_equal '2.65', feed.generator.version
}
