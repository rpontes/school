class Course < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name

  has_many :students
  has_many :diciplines

end
