xml = <<XML
<!--
Description: entry source rights escaped HTML
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <rights type="html">Example &lt;b&gt;Atom&lt;/b&gt;</rights>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example <b>Atom</b>', feed.entries[0].source.rights.to_s
}
