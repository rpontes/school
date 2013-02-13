class Student < ActiveRecord::Base
  attr_accessible :registry, :name, :course_id

  validates_presence_of :registry, :name

  belongs_to :course

end
