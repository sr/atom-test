xml = <<XML
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <author>
    <name>Example author</name>
    <uri>http://example.com/</uri>
  </author>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example author', feed.entries.first.authors.first.to_s.to_s
}
