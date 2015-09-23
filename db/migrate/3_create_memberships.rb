ROM::SQL.migration do
  change do
    create_table(:memberships) do
      primary_key :id
      foreign_key :user_id, :users
      foreign_key :project_id, :projects
    end
  end
end
