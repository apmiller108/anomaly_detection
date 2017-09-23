require "./spec_helper"

describe AnomolyDetection do
  it "initializes with an Array of integers" do
    arg = [[1, 2, 3], [4, 5, 6]]
    AnomolyDetection::EstimateGaussian.new(arg).should be_truthy
  end
end
