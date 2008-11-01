xml = <<XML
<!--
Description: feed rights inline XHTML
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <rights type="xhtml"><div xmlns="http://www.w3.org/1999/xhtml">Example <b>Atom</b></div></rights>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example <b>Atom</b>', feed.rights.to_s
}
