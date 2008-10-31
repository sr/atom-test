xml = <<XML
<!--
Description: feed contributor email
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <contributor>
    <name>Example contributor</name>
    <email>me@example.com</email>
    <uri>http://example.com/</uri>
  </contributor>
</feed>
XML

test = lambda { |feed|
	assert_equal 'me@example.com', feed.contributors[0].email
}
