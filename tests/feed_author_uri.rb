xml = <<XML
<!--
Description: feed author uri
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <author>
    <name>Example author</name>
    <email>me@example.com</email>
    <uri>http://example.com/</uri>
  </author>
</feed>
XML

test = lambda { |feed|
	assert_equal 'http://example.com/', feed.authors.first.uri.to_s
}
