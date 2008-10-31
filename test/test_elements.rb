#
# Copyright (c) 2006 Martin Traverso
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
# 

$LOAD_PATH << '../lib'

require 'atom'
require 'test/unit'

class TestAtom < Test::Unit::TestCase
  def test_category
    str = <<-XML
      <category term='blue' scheme='the scheme' label='Blue entries'
       xmlns="#{Atom::NAMESPACE}"/>
    XML

    category = Atom::Category.new(str)

    assert_respond_to category, :term
    assert_equal 'blue', category.term

    assert_respond_to category, :scheme
    assert_equal 'the scheme', category.scheme

    assert_respond_to category, :label
    assert_equal 'Blue entries', category.label
  end
end
