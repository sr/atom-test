xml = <<XML
<!--
Description: feed rights type='text'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <rights type="text">Example Atom</rights>
</feed>
XML

test = lambda { |feed|
	assert_equal 'text/plain', feed.rights.mime_type
}
