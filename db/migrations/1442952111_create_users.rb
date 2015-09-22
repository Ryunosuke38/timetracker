Sequel.migration do
  up do
    create_table(:users) do
      String :firstname
      String :lastname
      String :email
      String :password
    end
  end

  down do
    drop_table(:users)
  end
end
