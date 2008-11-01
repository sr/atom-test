xml = <<XML
<!--
Description: feed title escaped HTML
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <title type="html">Example &lt;b&gt;Atom&lt;/b&gt;</title>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example <b>Atom</b>', feed.title.to_s
}
