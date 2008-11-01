xml = <<XML
<!--
Description: entry source category term
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
	assert_equal 'atom10', feed.entries[0].source.categories[0].term
}
