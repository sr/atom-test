xml = <<XML
<!--
Description: feed rights content value
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <rights>Example Atom</rights>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example Atom', feed.rights
}
