require "test_helper"

describe Org do
  let(:org) { Org.new }

  it "must be valid" do
    value(org).must_be :valid?
  end
end
