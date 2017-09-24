require "./anomoly_detection/*"

module AnomolyDetection
  class EstimateGaussian
    getter x

    def initialize(x : Array(Array(Float64)))
      @x = x
      @mu = [] of Float64
      @sigma2 = [] of Float64
    end

    def call
      {
        mu:     mu,
        sigma2: sigma2,
      }
    end

    def mu
      return @mu unless @mu.empty?
      @mu = num_columns.times.each_with_object([] of Float64) do |index, list|
        list << x.sum { |row| row[index] } / num_rows
      end
    end

    def sigma2
      return @sigma2 unless @sigma2.empty?
      @sigma2 = num_columns.times.each_with_object([] of Float64) do |index, list|
        list << x.sum { |row| (row[index] - mu[index])**2 } / num_rows
      end
    end

    private def size
      [num_rows, num_columns]
    end

    private def num_rows
      x.size
    end

    private def num_columns
      x.first.size
    end
  end
end
