class User < ApplicationRecord
  validates :role_name, inclusion: { in: Role::NAMES }
  def role
    Role.role_for(role_name)
  end
end
