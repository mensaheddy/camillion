class Role::Basic < Role::Base
  has_permissions [
    :read_newsfeed
  ]
end