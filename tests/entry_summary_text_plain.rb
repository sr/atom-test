xml = <<XML
<!--
Description: entry summary with explicit type='text'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <summary type="text">Example Atom</summary>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example Atom', feed.entries[0].summary.to_s
}
