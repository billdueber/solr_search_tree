module SolrSearchTree
  module Payload
    module Generic
      attr_reader :value
      attr_reader :metadata

      def initialize(value = Null.new(self))
        @value = value
      end

      def inspect
        "<#{self.class}: #{value.inspect}>"
      end

      def with_value(val)
        self.class.new(val)
      end

      def hash
        inspect.hash
      end
    end



    class Null
      include Generic

      attr_reader :parent_class
      def initialize(parent_class)
        @parent_class = parent_class
      end

      def inspect
        "Null"
      end

      def type
        :null
      end

      def value
        nil
      end

    end
  end
end