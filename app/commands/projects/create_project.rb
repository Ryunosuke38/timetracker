class CreateProject < ROM::Commands::Create[:sql]
  relation :projects
  register_as :create
end
