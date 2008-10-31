xml = <<XML
<!--
Description: entry source subtitle with explicit type='text'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <subtitle type="text">Example Atom</subtitle>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example Atom', feed.entries[0].source.subtitle
}
