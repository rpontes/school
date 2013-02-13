class Discipline < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name

  has_and_belongs_to_many :course
  has_one :teacher

end
