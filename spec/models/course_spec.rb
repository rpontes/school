require 'spec_helper'

describe Course do
  context "validations" do
    it "accepts valid attributes" do
      course = Course.new({
        :name => "1B"
      })

      expect(course).to be_valid
    end

    it "requires name to be set" do
      course = Course.create(:name => nil)
      expect(course).to have(1).error_on(:name)
    end

  end
end
