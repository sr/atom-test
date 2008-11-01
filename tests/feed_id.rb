xml = <<XML
<!--
Description: feed id
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <id>http://example.com/</id>
</feed>
XML

test = lambda { |feed|
	assert_equal 'http://example.com/', feed.id.to_s
}
