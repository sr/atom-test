xml = <<XML
<!--
Description: entry content src
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <content src="http://example.com/movie.mp4"/>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal 'http://example.com/movie.mp4', feed.entries[0].content.src
}
