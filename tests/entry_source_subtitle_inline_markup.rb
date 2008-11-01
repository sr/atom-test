xml = <<XML
<!--
Description: entry source subtitle inline XHTML
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <subtitle type="xhtml"><div xmlns="http://www.w3.org/1999/xhtml">Example <b>Atom</b></div></subtitle>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example <b>Atom</b>', feed.entries[0].source.subtitle
}
