require 'rails_helper'

RSpec.describe City, type: :model do
  let (:city) { build(:city) }

  describe 'factory' do
    it 'has valid factory' do
      expect(city).to be_valid
    end
  end

  describe 'validations' do
    it { expect(build(:city, :no_name)).not_to be_valid }
  end
end
