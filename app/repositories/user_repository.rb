class UserRepository < ROM::Repository::Base
  relations :users, :memberships, :projects

  def [](id)
    users.where(id: id).one!
  end

  def with_id(id)
    users.where(id: id).select(:id, :firstname)
  end

  def with_memberships(id)
    with_id(id).combine_children(many: memberships)
  end

  def with_projects(id)
    # need to define with_users in project relation
    with_id(id).combine_children(many: projects.with_users)
  end
end
