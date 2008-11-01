xml = <<XML
<!--
Description: entry rights escaped HTML
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <rights type="html">Example &lt;b&gt;Atom&lt;/b&gt;</rights>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example <b>Atom</b>', feed.entries[0].rights.to_s
}
