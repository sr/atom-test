xml = <<XML
<!--
Description: feed author name + email maps to author
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
	assert_equal 'Example author (me@example.com)', feed.authors[0].to_s.to_s
}
