require 'rails_helper'

RSpec.describe SessionsController, type: :request do
  include UsersHelper
  include SessionsHelper

  let(:user) { create(:user) }
  let(:logged_user) { log_in(create(:user)) }

  describe '.new' do
    before { get new_session_path }
    it { expect(response).to have_http_status(:ok) }
  end

  describe '.create' do
    before { post_session_params user }
    it { expect(session[:user_id]).to eq user.id }
  end

  describe '.destroy' do
    before { delete session_path(logged_user) }
    it { expect(session[:user_id]).to be_nil }
  end
end
