xml = <<XML
<!--
Description: entry content inline XHTML
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <content type="xhtml"><div xmlns="http://www.w3.org/1999/xhtml">Example <b>Atom</b></div></content>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example <b>Atom</b>', feed.entries[0].content.value.to_s
}
