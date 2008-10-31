xml = <<XML
<!--
Description: feed rights escaped HTML
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <rights type="html">Example &lt;b&gt;Atom&lt;/b&gt;</rights>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example <b>Atom</b>', feed.rights
}
