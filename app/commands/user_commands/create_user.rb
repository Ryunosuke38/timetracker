class CreateUser < ROM::Commands::Create[:sql]
  relation :users
  register_as :create
end
