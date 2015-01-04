module UVecs
  module Polyhedron
    class Base
      attr_accessor :faces #polygons

      def initialize(attributes={faces: []})
        self.faces = attributes[:faces]
      end

      def vertex
        vertex = []

        faces.each do |face|
          face.edges.each do |edge|
            vertex << edge.vertex1 unless vertex.include?(edge.vertex1)
            vertex << edge.vertex2 unless vertex.include?(edge.vertex2)
          end
        end

        return vertex
      end

      def triangulate!
        triangles = []

        faces.each do |face|
          triangles << face.triangulate
          triangles.flatten!
        end

        self.faces = triangles
      end
    end
  end
end