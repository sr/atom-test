xml = <<XML
<!--
Description: entry link length
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
  <link rel="enclosure" type="video/mpeg4" href="http://www.example.com/movie.mp4" length="42301"/>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal '42301', feed.entries[0].links[0].length.to_s
}
