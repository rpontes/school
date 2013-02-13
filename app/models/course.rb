class Course < ActiveRecord::Base
  attr_accessible :name, :discipline_ids

  validates_presence_of :name

  has_many :students
  has_and_belongs_to_many :disciplines

end
