xml = <<XML
<!--
Description: entry author uri
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <author>
    <name>Example author</name>
    <email>me@example.com</email>
    <uri>http://example.com/</uri>
  </author>
</entry>

</feed>
XML

test = lambda { |feed|
	assert_equal 'http://example.com/', feed.entries[0].authors.first.uri
}
