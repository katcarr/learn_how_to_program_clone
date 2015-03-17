class Section < ActiveRecord::Base
  has_many :subsections

  validates :name, :presence => true
end
