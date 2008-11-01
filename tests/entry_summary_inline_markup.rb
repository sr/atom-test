xml = <<XML
<!--
Description: entry summary inline XHTML
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <summary type="xhtml"><div xmlns="http://www.w3.org/1999/xhtml">Example <b>Atom</b></div></summary>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example <b>Atom</b>', feed.entries[0].summary.to_s
}
