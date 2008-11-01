# because it conflicts with atom-tools
require File.expand_path('~/.gems/gems/atom-0.3/lib/atom')

require File.dirname(__FILE__) + '/../lib/atom/test'

Atom::Test.create_test_for! :all
