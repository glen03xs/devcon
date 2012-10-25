# == Schema Information
#
# Table name: tags
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

require 'spec_helper'

describe Tag do

  before do
    @tag = Fabricate(:tag)
  end

  subject { @tag }

  it { should respond_to(:name) }
  it { should respond_to(:description) }

  it { should be_valid }

  describe 'when name is blank' do
    before { @tag.name = ' ' }
    it { should_not be_valid }
  end

  describe 'when description is blank' do
    before { @tag.description = ' ' }
    it { should be_valid }
  end
end
