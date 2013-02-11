class Teacher < ActiveRecord::Base
  attr_accessible :name, :discipline_id

  validates_presence_of :name

  belongs_to :discipline, :counter_cache => true

end
