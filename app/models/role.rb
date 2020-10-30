class Role
  NAMES = [
    ADMIN = "admin",
    BASIC = "basic"
  ]

  def self.role_for(name)
    Base.role_for(name)
  end

  class Base
    def self.role_for(name)
      "Role::#{name.camelize}".constantize
    end

    def self.has_permissions(permissions)
      @permissions ||= permissions
    end

    def self.has_permission?(permission)
      @permissions.include?(permission)
    end


    def self.permissions
      @permissions
    end
  end
end