require "./spec_helper"

def matrix
  [[1.0, 2.0, 3.0], [4.0, 5.0, 6.0]]
end

def subject
  AnomalyDetection::EstimateGaussian.new(matrix)
end

describe AnomalyDetection do
  it "initializes with an Array of integers" do
    subject.should be_truthy
  end

  describe ".call" do
    it "returns the size of the X matrix" do
      subject.call.should eq({
        mu:     [2.5, 3.5, 4.5],
        sigma2: [2.25, 2.25, 2.25],
      })
    end
  end

  describe ".mu" do
    it "calculates the mu value for the ith feature" do
      subject.mu.should eq [2.5, 3.5, 4.5]
    end
  end

  describe ".sigma2" do
    it "calculates the sigma2 value for the ith feature" do
      subject.sigma2.should eq [2.25, 2.25, 2.25]
    end
  end
end
