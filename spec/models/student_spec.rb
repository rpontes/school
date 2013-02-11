require 'spec_helper'

describe Student do
  context "validations" do
    let(:course) {
      Course.create!(:name => "1B")
    }

    it "accepts valid attributes" do
      student = Student.new({
        :registry => "00113",
        :name => "John",
        :course_id => course.id
      })

      expect(student).to be_valid
    end

    it "requires registry to be set" do
      student = Student.create(:registry => nil)
      expect(student).to have(1).error_on(:registry)
    end

    it "requires name to be set" do
      student = Student.create(:name => nil)
      expect(student).to have(1).error_on(:name)
    end

  end
end
