require 'rails_helper'

RSpec.describe UsersController, type: :request do
  include UsersHelper

  let(:user) { build(:user) }
  let(:user_without_password) { build(:user, :no_password) }

  describe '.create' do
    context 'when successfully create a new user' do
      before { post_user_params user }
      it { expect(User.count).to be > 0 }
    end

    context 'when fails to create a new user' do
      before { post_user_params user_without_password }
      it { expect(User.count).to eq 0 }
    end
  end
end
