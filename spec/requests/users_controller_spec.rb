require 'rails_helper'

RSpec.describe UsersController, type: :request do
  let(:user) { create(:user) }
  describe '.new' do
    before { get new_user_path }
    it { expect(response).to have_http_status(:ok) }
  end

  describe '.show' do
    before { get user_path(user) }
    it { expect(response).to have_http_status(:ok) }
  end

  describe '.create' do
    context 'when success' do
      before do
        post users_path,
          params:
          {
            user:
            {
              email: 'some@email.com',
              password: 'validpassword'
            }
          }
      end
      it { expect(User.count).to be > 0 }
    end

    context 'when fails' do
      before do
        post users_path,
          params:
          {
            user:
            {
              email: user.email,
              password: user.password
            }
          }
      end
      it { expect(User.first).to eq user }
      it { expect(User.count).to eq 1 }
      it { expect(flash[:alert]).not_to be_nil }
      it { expect(response).to have_http_status(:unprocessable_entity) }
    end
  end
end
