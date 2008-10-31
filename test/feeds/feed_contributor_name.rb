xml = <<XML
<!--
Description: feed contributor name
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
	assert_equal 'Example contributor', feed.contributors[0].name
}
