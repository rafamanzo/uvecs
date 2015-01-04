module UVecs
  class Edge
    attr_accessor :vertex1, :vertex2

    def initialize(attributes={vertex1: nil, vertex2: nil})
      self.vertex1 = attributes[:vertex1]
      self.vertex2 = attributes[:vertex2]
    end

    #def to_line
    #  Line.new(origin: self.vertex1, direction: self.vertex2 - self.vertex1)
    #end
  end
end