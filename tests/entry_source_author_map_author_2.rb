xml = <<XML
<!--
Description: entry source author name maps to author if no email present
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <author>
    <name>Example author</name>
    <uri>http://example.com/</uri>
  </author>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example author', feed.entries[0].source.authors[0].to_s.to_s
}
