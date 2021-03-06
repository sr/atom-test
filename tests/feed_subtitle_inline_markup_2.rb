xml = <<XML
<!--
Description: feed subtitle inline XHTML with escaped markup
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <subtitle type="xhtml"><div xmlns="http://www.w3.org/1999/xhtml">History of the &lt;blink&gt; tag</div></subtitle>
</feed>
XML

test = lambda { |feed|
	assert_equal 'History of the &lt;blink&gt; tag', feed.subtitle.to_s
}
