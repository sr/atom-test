xml = <<XML
<!--
Description: entry source category label
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <category term="atom10" scheme="http://feedparser.org/tests/" label="Atom 1.0 tests"/>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'Atom 1.0 tests', feed.entries[0].source.categories[0].label
}
