xml = <<XML
<!--
Description: entry summary content type defaults to 'text/plain'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <summary>Example Atom</summary>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'text/plain', feed.entries[0].summary.mime_type.to_s
}
