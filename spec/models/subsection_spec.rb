require 'rails_helper'

describe Subsection do
  it { should validate_presence_of :name}
  it { should belong_to :section}
  it { should have_many :lessons}

end
