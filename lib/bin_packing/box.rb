module BinPacking
  class Box
    attr_accessor :width, :height, :x, :y, :packed, :can_rotate

    def initialize(width, height)
      @width = width
      @height = height
      @x = 0
      @y = 0
      @packed = false
      @can_rotate = true
    end

    def area
      @area ||= @width * @height
    end

    def packed?
      @packed
    end

    def can_rotate?
      @can_rotate
    end

    def label
      "#{@width}x#{@height} at [#{@x},#{@y}]"
    end
  end
end
