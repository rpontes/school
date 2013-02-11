require 'spec_helper'

describe Discipline do
  context "validations" do
    let(:course) {
      Course.create!(:name => "1B")
    }

    it "accepts valid attributes" do
      discipline = Discipline.new({
        :name => "Math",
        :course_id => course.id
      })

      expect(discipline).to be_valid
    end

    it "requires name to be set" do
      discipline = Discipline.create(:name => nil)
      expect(discipline).to have(1).error_on(:name)
    end

  end
end
