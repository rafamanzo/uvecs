module UVecs
  module Polygon
    class Triangle < Base
      def initialize(attributes={edges: []})
        super

        unless self.edges.count == 3
          raise TypeError.new("Expected 3 edges, but got #{self.edges.count}")
        end
      end
    end
  end
end