xml = <<XML
<!--
Description: entry title content type defaults to 'text/plain'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <title>Example Atom</title>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'text/plain', feed.entries[0].title.mime_type.to_s
}
