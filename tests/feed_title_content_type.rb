xml = <<XML
<!--
Description: feed title content type defaults to 'text/plain'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <title>Example Atom</title>
</feed>
XML

test = lambda { |feed|
	assert_equal 'text/plain', feed.title.mime_type
}
