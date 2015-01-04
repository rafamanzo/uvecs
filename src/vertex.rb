module UVecs
  class Vertex
    attr_accessor :x, :y, :z

    def initialize(attributes={x: 0.0, y: 0.0, z: 0.0})
      self.x = attributes[:x]
      self.y = attributes[:y]
      self.z = attributes[:z]
    end

    #############
    # Operators #
    #############

    def -(other)
      Vertex.new(x: self.x - other.x, y: self.y - other.y, z: self.z - other.z)
    end

    def +(other)
      Vertex.new(x: self.x + other.x, y: self.y + other.y, z: self.z + other.z)
    end

    def *(other)
      if other.is_a?(Numeric)
        Vertex.new(x: self.x * other, y: self.y * other, z: self.z * other)
      else
        raise TypeError.new("Unsupported product of vector by #{other.class}")
      end
    end

    def /(other)
      if other.is_a?(Numeric)
        self * (1.0/other)
      else
        raise TypeError.new("Unsupported product of vector by #{other.class}")
      end
    end

    ###########
    # Methods #
    ###########

    def perpendicular
      Vertex.new(x: 1.0, y: 1.0, z: (-(self.x + self.y)/self.z))
    end

    def norm
      (self.x**2 + self.y**2 + self.z**2)**(1.0/2.0)
    end

    def unit
      self / self.norm
    end

    def to_s
      "#{self.x} #{self.y} #{self.z}"
    end
  end
end