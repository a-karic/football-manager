require "rails_helper"

RSpec.feature 'Login', type: :system do
  let(:user) { create(:user) }
  feature 'user login on page', javascript: true do
    scenario 'success' do
      visit new_session_path
      fill_in 'session[email]', with: user.email
      fill_in 'session[password]', with: user.password
      click_on 'Submit'
      expect(current_path).to eq user_path(user)
    end
  end
end
