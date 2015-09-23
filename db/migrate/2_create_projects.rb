ROM::SQL.migration do
  change do
    create_table(:projects) do
      primary_key :id
      foreign_key :user_id, :users
      String :name
      String :description, text: true
    end
  end
end
