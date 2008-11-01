xml = <<XML
<!--
Description: entry content base64-encoded
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <content type="application/octet-stream">
    RXhhbXBsZSA8Yj5BdG9tPC9iPg==
  </content>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example <b>Atom</b>', feed.entries[0].content.value
}
