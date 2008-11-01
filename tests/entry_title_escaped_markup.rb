xml = <<XML
<!--
Description: entry title escaped HTML
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <title type="html">Example &lt;b&gt;Atom&lt;/b&gt;</title>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example <b>Atom</b>', feed.entries[0].title.to_s
}
