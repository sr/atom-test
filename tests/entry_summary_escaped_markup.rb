xml = <<XML
<!--
Description: entry summary escaped HTML
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <summary type="html">Example &lt;b&gt;Atom&lt;/b&gt;</summary>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example <b>Atom</b>', feed.entries[0].summary.to_s
}
