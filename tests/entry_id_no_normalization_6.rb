xml = <<XML
<!--
Description: entry id not normalized (see Atom 1.0 section 4.2.6.1)
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <id>http://www.example.com/%7ebob</id>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'http://www.example.com/%7ebob', feed.entries[0].id.to_s
}
