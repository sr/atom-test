xml = <<XML
<!--
Description: entry source contributor email
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <contributor>
    <name>Example contributor</name>
    <email>me@example.com</email>
    <uri>http://example.com/</uri>
  </contributor>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'me@example.com', feed.entries[0].source.contributors[0].email.to_s
}
