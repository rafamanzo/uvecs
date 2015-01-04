module UVecs
  module Polygon
    class Base
      attr_accessor :edges

      def initialize(attributes={edges: []})
        self.edges = attributes[:edges]
      end

      def vertex
        vertex = []

        self.edges.each do |edge|
          vertex << edge.vertex1 unless vertex.include?(edge.vertex1)
          vertex << edge.vertex2 unless vertex.include?(edge.vertex2)
        end

        return vertex
      end

      def triangulate
        centroid = Vertex.new(x: 0.0, y: 0.0, z: 0.0)
        self.vertex.each do |vertex|
          centroid = centroid + vertex
        end
        centroid = centroid / self.edges.count

        triangles = []
        edges.each do |edge|
          triangles << Triangle.new(edges: [edge, Edge.new(vertex1: edge.vertex1, vertex2: centroid), Edge.new(vertex1: edge.vertex2, vertex2: centroid)])
        end

        return triangles
      end
    end
  end
end