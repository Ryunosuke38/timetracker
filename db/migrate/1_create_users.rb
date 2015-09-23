ROM::SQL.migration do
  change do
    create_table(:users) do
      primary_key :id
      String :firstname
      String :lastname
      String :email
      String :password
    end
  end
end
