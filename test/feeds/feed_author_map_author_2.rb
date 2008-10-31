xml = <<XML
<!--
Description: feed author name maps to author if no email present
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <author>
    <name>Example author</name>
    <uri>http://example.com/</uri>
  </author>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example author', feed.authors[0].to_s
}
