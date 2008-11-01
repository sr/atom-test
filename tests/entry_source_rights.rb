xml = <<XML
<!--
Description: entry source rights
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <rights>Example Atom</rights>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example Atom', feed.entries[0].source.rights.to_s
}
