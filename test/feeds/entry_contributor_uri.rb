xml = <<XML
<!--
Description: entry contributor uri
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <contributor>
    <name>Example contributor</name>
    <email>me@example.com</email>
    <uri>http://example.com/</uri>
  </contributor>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'http://example.com/', feed.entries[0].contributors[0].uri
}
