class Lesson < ActiveRecord::Base
  belongs_to :subsection
  
  validates :name, :presence => true
end
