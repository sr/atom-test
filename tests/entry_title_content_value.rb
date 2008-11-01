xml = <<XML
<!--
Description: entry title content value
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <title>Example Atom</title>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example Atom', feed.entries[0].title.to_s
}
