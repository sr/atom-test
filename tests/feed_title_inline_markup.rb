xml = <<XML
<!--
Description: feed title inline XHTML
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <title type="xhtml"><div xmlns="http://www.w3.org/1999/xhtml">Example <b>Atom</b></div></title>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example <b>Atom</b>', feed.title.to_s
}
