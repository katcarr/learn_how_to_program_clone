class Subsection < ActiveRecord::Base
  belongs_to :section
  has_many :lessons

  validates :name, :presence => true
end
