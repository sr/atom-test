xml = <<XML
<!--
Description: entry rights with explicit type='text'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <rights type="text">Example Atom</rights>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example Atom', feed.entries[0].rights.to_s
}
