require "./anomoly_detection/*"

module AnomolyDetection
  class EstimateGaussian
    getter x

    def initialize(x : Array(Array(Int32)))
      @x = x
    end

    def call
      size
    end

    private def size
      [num_columns, num_rows]
    end

    private def num_columns
      x.size
    end

    private def num_rows
      x.first.size
    end
  end
end
