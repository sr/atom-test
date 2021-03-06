xml = <<XML
<!--
Description: feed title contains relative URI resolved relative to xml:base
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <title type="xhtml" xml:base="http://example.com/test/"><div xmlns="http://www.w3.org/1999/xhtml">Example <a href="test.html">test</a></div></title>
</feed>
XML

test = lambda { |feed|
	assert_equal "Example <a href='http://example.com/test/test.html'>test</a>", feed.title.to_s
}
