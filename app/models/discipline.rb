class Discipline < ActiveRecord::Base
  attr_accessible :name, :course_id

  validates_presence_of :name

  belongs_to :course
  has_one :teacher

end
