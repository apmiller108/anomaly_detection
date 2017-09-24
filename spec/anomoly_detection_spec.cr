require "./spec_helper"

describe AnomolyDetection do
  it "initializes with an Array of integers" do
    subject.should be_truthy
  end

  it "returns the size of the X matrix" do
    subject.call.should eq [2, 3]
  end
end

def matrix
  [[1, 2, 3], [4, 5, 6]]
end

def subject
  AnomolyDetection::EstimateGaussian.new(matrix)
end
