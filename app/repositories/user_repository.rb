class UserRepository < ROM::Repository::Base
  relations :users, :projects

  def [](id)
    users.where(id: id).one!
  end

  def with_id(id)
    users.where(id: id).select(:id, :firstname)
  end

  def with_projects(id)
    with_id(id).combine_children(many: projects)
  end
end
