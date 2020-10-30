class User < ApplicationRecord
  def role
    Role.role_for(role_name)
  end
end
