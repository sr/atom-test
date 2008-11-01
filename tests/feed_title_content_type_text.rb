xml = <<XML
<!--
Description: feed title type='text'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <title type="text">Example Atom</title>
</feed>
XML

test = lambda { |feed|
	assert_equal 'text/plain', feed.title.mime_type
}
