require 'rails_helper'

RSpec.describe UsersController, type: :request do
  include UsersHelper

  let(:user) { log_in(create(:user)) }
  let(:new_attributes) { { email: 'test@email.com' } }
  let(:new_invalid_attributes) do
    { password: 'wrongpassword', password_confirmation: 'wrongpass123' }
  end

  describe '.update' do
    context 'when successfully update user' do
      before { patch_user_params user, new_attributes }
      it 'successfully changes user email' do
        updated_user = User.order(:updated_at).last
        expect(updated_user.email).to eq new_attributes[:email]
      end
    end

    context 'when fails to update user' do
      before { patch_user_params user, new_invalid_attributes }
      it 'fails to change user password' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
