class CreateMembership < ROM::Commands::Create[:sql]
  relation :memberships
  register_as :create
end
