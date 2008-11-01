require File.dirname(__FILE__) + '/../lib/atom/test'

require 'rubygems'
require 'atom/feed'

Atom::Test.create_test_for! :all
