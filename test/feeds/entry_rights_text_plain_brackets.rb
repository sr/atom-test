xml = <<XML
<!--
Description: entry rights with explicit type='text' contains brackets that are not markup
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <rights type="text">History of the &lt;blink&gt; tag</rights>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'History of the <blink> tag', feed.entries[0].rights
}
