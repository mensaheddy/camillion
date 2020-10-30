require 'rails_helper'

RSpec.describe User, type: :model do
  describe "role" do
    let(:user) { create(:user, role_name: role) }

    context "admin" do
      let(:role) { "admin" }

      it "returns an admin role" do
        expect(user.role).to eq(Role::Admin)
      end
    end

    context "basic" do
      let(:role) { "basic" }

      it "returns an basic role" do
        expect(user.role).to eq(Role::Basic)
      end
    end
  end
end
