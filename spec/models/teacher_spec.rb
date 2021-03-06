require 'spec_helper'

describe Teacher do
  context "validations" do
    let(:discipline) {
      Discipline.create!(:name => "Math")
    }

    it "accepts valid attributes" do
      teacher = Teacher.new({
        :name => "John",
        :discipline_id => discipline.id
      })

      expect(teacher).to be_valid
    end

    it "requires name to be set" do
      teacher = Teacher.create(:name => nil)
      expect(teacher).to have(1).error_on(:name)
    end

  end
end
