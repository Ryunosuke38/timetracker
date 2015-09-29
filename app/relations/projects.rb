class Projects < ROM::Relation[:sql]
  many_to_many :users,
    join_table: :memberships,
    left_key: :project_id,
    right_key: :user_id

  def with_users
    association_join(:users)
  end
end

