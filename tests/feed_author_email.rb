xml = <<XML
<!--
Description: feed author email
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
	assert_equal 'me@example.com', feed.authors.first.email.to_s
}
