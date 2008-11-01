xml = <<XML
<!--
Description: feed rights with explicit type='text'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <rights type="text">Example Atom</rights>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example Atom', feed.rights
}
