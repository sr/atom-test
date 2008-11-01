xml = <<XML
<!--
Description: entry title with explicit type='text' contains brackets that are not markup
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <title type="text">History of the &lt;blink&gt; tag</title>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'History of the <blink> tag', feed.entries[0].title.to_s
}
