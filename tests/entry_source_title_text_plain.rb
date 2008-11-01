xml = <<XML
<!--
Description: entry source title with explicit type='text'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <title type="text">Example Atom</title>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example Atom', feed.entries[0].source.title
}
