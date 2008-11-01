xml = <<XML
<!--
Description: feed subtitle inline XHTML
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <subtitle type="xhtml"><div xmlns="http://www.w3.org/1999/xhtml">Example <b>Atom</b></div></subtitle>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example <b>Atom</b>', feed.subtitle.to_s
}
