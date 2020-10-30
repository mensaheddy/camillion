class Role::Admin < Role::Base
  has_permissions [
    :create_newsfeed,
    :read_newsfeed
  ]
end