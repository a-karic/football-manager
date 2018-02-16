require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'factory' do
    it 'has valid factory' do
      expect(build(:user)).to be_valid
    end
  end

  describe 'validations' do
    it { expect(build(:user, :no_email)).not_to be_valid }
    it { expect(build(:user, :no_password)).not_to be_valid }
    it { expect(build(:user, :short_password)).not_to be_valid }
    it { expect(build(:user, :no_country)).to be_valid }
    it { expect(build(:user, :no_city)).to be_valid }
  end
end
