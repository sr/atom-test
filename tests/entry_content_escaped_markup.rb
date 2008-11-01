xml = <<XML
<!--
Description: entry content escaped HTML
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <content type="html">Example &lt;b&gt;Atom&lt;/b&gt;</content>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example <b>Atom</b>', feed.entries[0].content.value.to_s
}
