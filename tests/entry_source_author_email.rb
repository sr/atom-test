xml = <<XML
<!--
Description: entry source author email
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <author>
    <name>Example author</name>
    <email>me@example.com</email>
    <uri>http://example.com/</uri>
  </author>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'me@example.com', feed.entries[0].source.authors.first.email
}
