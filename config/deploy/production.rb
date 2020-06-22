# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

set :stage, :production
set :rails_env, :production
set :branch, "master"
set :linked_files, %w{config/master.key}

server "server ip address", user: "test", roles: %w{app db web}