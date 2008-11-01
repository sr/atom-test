xml = <<XML
<!--
Description: entry title type='text'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <title type="text">Example Atom</title>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'text/plain', feed.entries[0].title.mime_type.to_s
}
