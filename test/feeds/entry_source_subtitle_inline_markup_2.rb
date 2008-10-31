xml = <<XML
<!--
Description: entry source subtitle inline XHTML with escaped markup
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <subtitle type="xhtml"><div xmlns="http://www.w3.org/1999/xhtml">History of the &lt;blink&gt; tag</div></subtitle>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'History of the &lt;blink&gt; tag', feed.entries[0].source.subtitle
}
