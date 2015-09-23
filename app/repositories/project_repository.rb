class ProjectRepository < ROM::Repository::Base
  relations :projects, :memberships

  def [](id)
    projects.where(id: id).one!
  end

  def with_id(id)
    projects.where(id: id).select(:id, :name)
  end

  def with_memberships(id)
    with_id(id).combine_children(many: memberships)
  end
end
