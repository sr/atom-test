xml = <<XML
<!--
Description: feed subtitle content type defaults to 'text/plain'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <subtitle>Example Atom</subtitle>
</feed>
XML

test = lambda { |feed|
	assert_equal 'text/plain', feed.subtitle.mime_type
}
