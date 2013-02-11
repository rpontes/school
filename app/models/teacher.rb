class Teacher < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name

  belongs_to :discipline, :counter_cache => true

end
