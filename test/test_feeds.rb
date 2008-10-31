$LOAD_PATH << '../lib'

require 'atom'
require 'test/unit'

class FeedTests < Test::Unit::TestCase
  basedir = File.dirname(__FILE__)
  # add one unit test for each file
  Dir[basedir + '/feeds/*.rb'].each do |xmlfile|
    name = ("test_" + File.basename(xmlfile).sub('.rb','')).to_sym
    define_method(name) {
      # load test script
      test = ''
      File.foreach(xmlfile) do |line|
        test << line
      end

      # extract feed & tests
      feed_data, assertion = eval(test + "\n[xml, test]")

      feed = Atom::Feed.new(feed_data)

      # run test
      test.call(feed)
    }
  end
end
