xml = <<XML
<!--
Description: entry content content type defaults to 'text/plain'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <content>Example Atom</content>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'text/plain', feed.entries[0].content.mime_type
}
