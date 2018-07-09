require "test_helper"

describe OrganizationCategory do
  let(:organization_category) { OrganizationCategory.new }

  it "must be valid" do
    value(organization_category).must_be :valid?
  end
end
