xml = <<XML
<!--
Description: entry source subtitle escaped HTML
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <subtitle type="html">Example &lt;b&gt;Atom&lt;/b&gt;</subtitle>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example <b>Atom</b>', feed.entries[0].source.subtitle.to_s
}
