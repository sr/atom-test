xml = <<XML
<!--
Description: entry source subtitle content value
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <subtitle>Example Atom</subtitle>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example Atom', feed.entries[0].source.subtitle.to_s
}
