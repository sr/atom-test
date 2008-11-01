xml = <<XML
<!--
Description: feed subtitle escaped HTML
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <subtitle type="html">Example &lt;b&gt;Atom&lt;/b&gt;</subtitle>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example <b>Atom</b>', feed.subtitle.to_s
}
