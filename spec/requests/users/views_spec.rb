require 'rails_helper'

RSpec.describe UsersController, type: :request do
  include UsersHelper

  let(:user) { create(:user) }
  let(:logged_user) { log_in user }

  describe '.new' do
    before { get new_user_path }
    it { expect(response).to have_http_status(:ok) }
  end

  describe '.show' do
    before { get user_path(logged_user) }
    it { expect(response).to have_http_status(:ok) }
  end
end
