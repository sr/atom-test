xml = <<XML
<!--
Description: entry title with explicit type='text'
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <title type="text">Example Atom</title>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Example Atom', feed.entries[0].title
}
