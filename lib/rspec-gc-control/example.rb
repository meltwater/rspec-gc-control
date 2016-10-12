require 'rspec/core/example'

module RSpec
  module Core
    # Extensions to RSpec::Core::Example to perform explicit GC and capture
    # GC execution time.
    class Example
      private

      alias_method :run_after_example_without_gc, :run_after_example

      def run_after_example
        run_after_example_without_gc
      ensure
        RSpec.configuration.gc_if_needed
      end
    end
  end
end
