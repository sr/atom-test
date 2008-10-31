xml = <<XML
<!--
Description: entry source generator
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <generator uri="http://example.com/" version="2.65">Example generator</generator>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example generator', feed.entries[0].source.generator.to_s
}
