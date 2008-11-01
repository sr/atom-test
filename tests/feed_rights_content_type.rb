xml = <<XML
<!--
Description: feed rights content type defaults to 'text/plain'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <rights>Example Atom</rights>
</feed>
XML

test = lambda { |feed|
	assert_equal 'text/plain', feed.rights.mime_type.to_s
}
