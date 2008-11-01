xml = <<XML
<!--
Description: multiple entry source contributors
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <contributor>
    <name>Contributor 1</name>
    <email>me@example.com</email>
    <uri>http://example.com/</uri>
  </contributor>
  <contributor>
    <name>Contributor 2</name>
    <email>you@example.com</email>
    <uri>http://two.example.com/</uri>
  </contributor>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	contributors = feed.entries[0].source.contributors

	assert_equal 2, contributors.size
	assert_equal 'Contributor 1', contributors[0].name.to_s
	assert_equal 'me@example.com', contributors[0].email.to_s
	assert_equal 'http://example.com/', contributors[0].uri.to_s

	assert_equal 'Contributor 2', contributors[1].name.to_s
	assert_equal 'you@example.com', contributors[1].email.to_s
	assert_equal 'http://two.example.com/', contributors[1].uri.to_s
}
