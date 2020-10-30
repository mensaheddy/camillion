class User < ApplicationRecord
  validates :role_name, inclusion: { Role::NAMES }
  def role
    Role.role_for(role_name)
  end
end
