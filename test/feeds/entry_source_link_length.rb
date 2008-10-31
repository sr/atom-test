xml = <<XML
<!--
Description: entry source link length
-->
<feed xmlns="http://www.w3.org/2005/Atom">
<entry>
<source>
  <link rel="enclosure" type="video/mpeg4" href="http://www.example.com/movie.mp4" length="42301"/>
</source>
</entry>
</feed>
XML

test = lambda { |feed|
	assert_equal '42301', feed.entries[0].source.links[0].length
}
