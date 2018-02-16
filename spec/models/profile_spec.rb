require 'rails_helper'

RSpec.describe Profile, type: :model do
  let(:profile) { build(:profile) }

  describe 'factory' do
    it 'has valid factory' do
      expect(profile).to be_valid
    end
  end

  describe 'validations' do
    it { expect(build(:profile, :no_first_name)).not_to be_valid }
    it { expect(build(:profile, :no_last_name)).not_to be_valid }
  end
end
