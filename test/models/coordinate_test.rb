require "test_helper"

describe Coordinate do
  let(:coordinate) { Coordinate.new }

  it "must be valid" do
    value(coordinate).must_be :valid?
  end
end
