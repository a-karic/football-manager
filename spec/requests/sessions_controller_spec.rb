require 'rails_helper'

RSpec.describe SessionsController, type: :request do
  let(:user) { create(:user) }
  describe '.new' do
    before { get new_session_path }
    it { expect(response).to have_http_status(:ok) }
  end

  describe '.create and .destroy' do
    before do
      post sessions_path, params:
        { session: { email: user.email, password: user.password } }
    end
    describe '.create' do
      it { expect(session[:user_id]).not_to be_nil }
    end
    describe '.destroy' do
      it do
        delete session_path user.id
        expect(session[:user_id]).to be_nil
      end
    end
  end

end
