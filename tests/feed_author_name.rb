xml = <<XML
<!--
Description: feed author name
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
	assert_equal 'Example author', feed.authors.first.name.to_s
}
