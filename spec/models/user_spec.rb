require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'email' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }
  end

  describe 'password' do
    it { is_expected.to validate_length_of(:password_digest).is_at_least(5) }
  end

  describe 'factory' do
    describe 'valid?' do
      context 'true' do
        it { expect(build(:user)).to be_valid }
      end
      context 'false' do
        it { expect(build(:user, :no_password)).not_to be_valid }
      end
    end
  end
end
