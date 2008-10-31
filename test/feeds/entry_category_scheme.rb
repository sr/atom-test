xml = <<XML
<!--
Description: entry category scheme
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <category term="atom10" scheme="http://feedparser.org/tests/" label="Atom 1.0 tests"/>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'http://feedparser.org/tests/', feed.entries[0].categories[0].scheme
}
