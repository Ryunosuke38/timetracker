ROM::SQL.migration do
  change do
    create_table(:projects) do
      primary_key :id
      String :name
      String :description, text: true
    end
  end
end
