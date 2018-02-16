require 'rails_helper'

RSpec.describe SessionPolicy do
  let(:user) { create(:user) }
  let(:params) { { id: user.id } }
  let(:setting_policy) { SettingPolicy.new(user, params) }
  let(:setting_policy_without_user) { SettingPolicy.new(nil, params) }

  describe '.index?' do
    it { expect(setting_policy.index?).to eq true }
    it { expect(setting_policy_without_user.index?).to eq false }
  end
end
