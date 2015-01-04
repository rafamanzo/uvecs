module UVecs
  module Polygon
    class Pentagon < Base
      def initialize(attributes={edges: []})
        super

        unless self.edges.count == 5
          raise TypeError.new("Expected 5 edges, but got #{self.edges.count}")
        end
      end
    end
  end
end