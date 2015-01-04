module UVecs
  module Polyhedron
    class Dodecahedron < Base
      def initialize(attributes={faces: []})
        super

        phi = (1.0 + 5**0.5)/2
        theta = 1/phi

        vertex0 = Vertex.new(x: theta, y: phi, z: 0.0)
        vertex6 = Vertex.new(x: theta, y: -phi, z: 0.0)
        vertex8 = Vertex.new(x: -theta, y: -phi, z: -0.0)
        vertex14 = Vertex.new(x: -theta, y: phi, z: 0.0)
        vertex1 = Vertex.new(x: 1.0, y: 1.0, z: 1.0)
        vertex4 = Vertex.new(x: 1.0, y: 1.0, z: -1.0)
        vertex5 = Vertex.new(x: 1.0, y: -1.0, z: 1.0)
        vertex7 = Vertex.new(x: 1.0, y: -1.0, z: -1.0)
        vertex9 = Vertex.new(x: -1.0, y: -1.0, z: -1.0)
        vertex12 = Vertex.new(x: -1.0, y: 1.0, z: -1.0)
        vertex17 = Vertex.new(x: -1.0, y: 1.0, z: 1.0)
        vertex19 = Vertex.new(x: -1.0, y: -1.0, z: 1.0)
        vertex2 = Vertex.new(x: phi, y: 0.0, z: theta)
        vertex3 = Vertex.new(x: phi, y: 0.0, z: -theta)
        vertex11 = Vertex.new(x: -phi, y: 0.0, z: -theta)
        vertex15 = Vertex.new(x: -phi, y: 0.0, z: theta)
        vertex10 = Vertex.new(x: 0.0, y: -theta, z: -phi)
        vertex13 = Vertex.new(x: 0.0, y: theta, z: -phi)
        vertex16 = Vertex.new(x: 0.0, y: theta, z: phi)
        vertex18 = Vertex.new(x: 0.0, y: -theta, z: phi)

        self.faces << Polygon::Pentagon.new(edges:
                                              [Edge.new(vertex1: vertex0, vertex2: vertex1),
                                               Edge.new(vertex1: vertex1, vertex2: vertex2),
                                               Edge.new(vertex1: vertex2, vertex2: vertex3),
                                               Edge.new(vertex1: vertex3, vertex2: vertex4),
                                               Edge.new(vertex1: vertex4, vertex2: vertex0)
                                              ])
        self.faces << Polygon::Pentagon.new(edges:
                                              [Edge.new(vertex1: vertex3, vertex2: vertex2),
                                               Edge.new(vertex1: vertex2, vertex2: vertex5),
                                               Edge.new(vertex1: vertex5, vertex2: vertex6),
                                               Edge.new(vertex1: vertex6, vertex2: vertex7),
                                               Edge.new(vertex1: vertex7, vertex2: vertex3)
                                              ])
        self.faces << Polygon::Pentagon.new(edges:
                                              [Edge.new(vertex1: vertex7, vertex2: vertex6),
                                               Edge.new(vertex1: vertex6, vertex2: vertex8),
                                               Edge.new(vertex1: vertex8, vertex2: vertex9),
                                               Edge.new(vertex1: vertex9, vertex2: vertex10),
                                               Edge.new(vertex1: vertex10, vertex2: vertex7)
                                              ])
        self.faces << Polygon::Pentagon.new(edges:
                                              [Edge.new(vertex1: vertex10, vertex2: vertex9),
                                               Edge.new(vertex1: vertex9, vertex2: vertex11),
                                               Edge.new(vertex1: vertex11, vertex2: vertex12),
                                               Edge.new(vertex1: vertex12, vertex2: vertex13),
                                               Edge.new(vertex1: vertex13, vertex2: vertex9)
                                              ])
        self.faces << Polygon::Pentagon.new(edges:
                                              [Edge.new(vertex1: vertex13, vertex2: vertex4),
                                               Edge.new(vertex1: vertex4, vertex2: vertex3),
                                               Edge.new(vertex1: vertex3, vertex2: vertex7),
                                               Edge.new(vertex1: vertex7, vertex2: vertex10),
                                               Edge.new(vertex1: vertex10, vertex2: vertex13)
                                              ])
        self.faces << Polygon::Pentagon.new(edges:
                                              [Edge.new(vertex1: vertex13, vertex2: vertex12),
                                               Edge.new(vertex1: vertex12, vertex2: vertex14),
                                               Edge.new(vertex1: vertex14, vertex2: vertex0),
                                               Edge.new(vertex1: vertex0, vertex2: vertex4),
                                               Edge.new(vertex1: vertex4, vertex2: vertex13)
                                              ])
        self.faces << Polygon::Pentagon.new(edges:
                                              [Edge.new(vertex1: vertex1, vertex2: vertex16),
                                               Edge.new(vertex1: vertex16, vertex2: vertex17),
                                               Edge.new(vertex1: vertex17, vertex2: vertex14),
                                               Edge.new(vertex1: vertex14, vertex2: vertex0),
                                               Edge.new(vertex1: vertex0, vertex2: vertex1)
                                              ])
        self.faces << Polygon::Pentagon.new(edges:
                                              [Edge.new(vertex1: vertex1, vertex2: vertex2),
                                               Edge.new(vertex1: vertex2, vertex2: vertex5),
                                               Edge.new(vertex1: vertex5, vertex2: vertex18),
                                               Edge.new(vertex1: vertex18, vertex2: vertex16),
                                               Edge.new(vertex1: vertex16, vertex2: vertex1)
                                              ])
        self.faces << Polygon::Pentagon.new(edges:
                                              [Edge.new(vertex1: vertex5, vertex2: vertex6),
                                               Edge.new(vertex1: vertex6, vertex2: vertex8),
                                               Edge.new(vertex1: vertex8, vertex2: vertex19),
                                               Edge.new(vertex1: vertex19, vertex2: vertex18),
                                               Edge.new(vertex1: vertex18, vertex2: vertex5)
                                              ])
        self.faces << Polygon::Pentagon.new(edges:
                                              [Edge.new(vertex1: vertex18, vertex2: vertex19),
                                               Edge.new(vertex1: vertex19, vertex2: vertex15),
                                               Edge.new(vertex1: vertex15, vertex2: vertex17),
                                               Edge.new(vertex1: vertex17, vertex2: vertex16),
                                               Edge.new(vertex1: vertex16, vertex2: vertex18)
                                              ])
        self.faces << Polygon::Pentagon.new(edges:
                                              [Edge.new(vertex1: vertex8, vertex2: vertex9),
                                               Edge.new(vertex1: vertex9, vertex2: vertex11),
                                               Edge.new(vertex1: vertex11, vertex2: vertex15),
                                               Edge.new(vertex1: vertex15, vertex2: vertex19),
                                               Edge.new(vertex1: vertex19, vertex2: vertex8)
                                              ])
        self.faces << Polygon::Pentagon.new(edges:
                                              [Edge.new(vertex1: vertex15, vertex2: vertex11),
                                               Edge.new(vertex1: vertex11, vertex2: vertex12),
                                               Edge.new(vertex1: vertex12, vertex2: vertex14),
                                               Edge.new(vertex1: vertex14, vertex2: vertex17),
                                               Edge.new(vertex1: vertex17, vertex2: vertex15)
                                              ])
      end
    end
  end
end