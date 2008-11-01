xml = <<XML
<!--
Description: entry rights content value
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <rights>Example Atom</rights>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example Atom', feed.entries[0].rights
}
