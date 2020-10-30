
require "rails_helper"

RSpec.shared_examples "has permission" do
  it "permit only allowed roles" do
    exceptions = Role::NAMES - allowed_roles
    exceptions.each do |role_name|
      role = Role.role_for(role_name)
      expect(role.has_permission?(permission)).to be_falsey
    end
  end
end

RSpec.describe Role, type: :model do
  describe "create_newsfeed" do
    let(:permission) { :create_newsfeed }
    let(:allowed_roles) { [Role::ADMIN] }

    it_behaves_like "has permission"
  end

  describe "read_newfeed" do
    let(:permission) { :read_newsfeed }
    let(:allowed_roles) { [Role::ADMIN, Role::BASIC] }

    it_behaves_like "has permission"
  end
end