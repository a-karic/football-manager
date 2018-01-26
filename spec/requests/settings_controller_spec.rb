require 'rails_helper'

RSpec.describe SettingsController, type: :request do
  include UsersHelper

  let(:user) { create(:user) }

  describe '.index' do
    context 'when not logged user' do
      before { get settings_path }
      it { expect(response).not_to have_http_status(:ok) }
    end

    context 'when logged user' do
      before do
        log_in user
        get settings_path
      end
      it { expect(response).to have_http_status(:ok) }
    end
  end
end
