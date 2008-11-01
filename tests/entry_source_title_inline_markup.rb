xml = <<XML
<!--
Description: entry source title inline XHTML
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <title type="xhtml"><div xmlns="http://www.w3.org/1999/xhtml">Example <b>Atom</b></div></title>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example <b>Atom</b>', feed.entries[0].source.title
}
