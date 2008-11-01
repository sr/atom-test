require 'test/unit'

module Atom
  module Test
    @@tests_directory = File.dirname(__FILE__) + '/../../tests'

    def self.create_test_for!(what)
      test_case = Class.new(::Test::Unit::TestCase)

      self.collect_test_files_for(what).each do |test_file|
        test_case.class_eval do
          method_name = "test_#{File.basename(test_file).sub('.rb','')}"

          define_method(method_name) do
            test_file_content = File.read(test_file)
            test_data, assertion = eval("#{test_file_content};[xml, test]")

            element =
              if Atom::Feed.respond_to?(:parse)
                Atom::Feed.parse(test_data)
              else
                Atom::Feed.new(test_data)
              end

            assertion.call(element)
          end
        end
      end
    end

    private
      def self.collect_test_files_for(element)
        case element
        when :all
          Dir[@@tests_directory + '/*.rb']
        when :feed, :entry
          Dir[@@tests_directory + "/#{element}_*.rb"]
        when :other
          collect_test_files_for(:all) - collect_test_files_for(:feed) - collect_test_files_for(:entry)
        end
      end
  end
end
