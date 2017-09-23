require "./anomoly_detection/*"

module AnomolyDetection
  class EstimateGaussian
    getter x

    def initialize(x : Array(Array(Int32)))
      @x = x
    end
  end
end
