require 'matrix'

module UVecs
  class Line
    attr_accessor :origin, :direction

    def initialize(attributes={origin: Vertex.new, direction: Vertex.new(x: 1.0, y: 0.0, z: 0.0)})
      self.origin = attributes[:origin]
      self.direction = attributes[:direction]
    end

    def value_at(parameter)
      (self.direction * parameter) + self.origin
    end

    def self.intersection(line1, line2)
      constants = Vector[line1.origin.x - line2.origin.x, line1.origin.y - line2.origin.y, line1.origin.z - line2.origin.z]
      parameters = Matrix[[-line1.direction.x, line2.direction.x],
                          [-line1.direction.y, line2.direction.y],
                          [-line1.direction.z, line2.direction.z]]

      line1.value_at(Matrix::LUPDecomposition.new(parameters).solve(constants)[0].to_f)
    end
  end
end