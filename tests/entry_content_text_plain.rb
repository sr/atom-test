xml = <<XML
<!--
Description: entry content with explicit type='text'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <content type="text">Example Atom</content>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example Atom', feed.entries[0].content.value.to_s
}
