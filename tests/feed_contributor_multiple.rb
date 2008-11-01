xml = <<XML
<!--
Description: multiple feed contributors
-->
<feed xmlns="http://www.w3.org/2005/Atom">
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
</feed>
XML

test = lambda { |feed|
	assert_equal 2, feed.contributors.size
	assert_equal 'Contributor 1', feed.contributors[0].name
	assert_equal 'me@example.com', feed.contributors[0].email
	assert_equal 'http://example.com/', feed.contributors[0].uri

	assert_equal 'Contributor 2', feed.contributors[1].name
	assert_equal 'you@example.com', feed.contributors[1].email
	assert_equal 'http://two.example.com/', feed.contributors[1].uri
}
