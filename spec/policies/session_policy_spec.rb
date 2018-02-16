require 'rails_helper'

RSpec.describe SessionPolicy do
  let(:user) { create(:user) }
  let(:params) { nil }
  let(:session_policy) { SessionPolicy.new(user, params) }
  let(:session_policy_without_user) { SessionPolicy.new(nil, params) }

  describe '.new? and .create?' do
    it { expect(session_policy.new?).to eq false }
    it { expect(session_policy_without_user.new?).to eq true }
  end

  describe '.destroy?' do
    it { expect(session_policy.destroy?).to eq true }
    it { expect(session_policy_without_user.destroy?).to eq false }
  end
end
