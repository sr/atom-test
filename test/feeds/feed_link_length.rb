xml = <<XML
<!--
Description: feed link length
-->
<feed xmlns="http://www.w3.org/2005/Atom">
  <link rel="enclosure" type="video/mpeg4" href="http://www.example.com/movie.mp4" length="42301"/>
</feed>
XML

test = lambda { |feed|
	assert_equal '42301', feed.links[0].length
}
