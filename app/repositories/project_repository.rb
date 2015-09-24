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

  def users_for_project(id)
    with_memberships(id).first.memberships.map do |m|
      UserRepository.new(ROM.env)[m.user_id]
    end
  end
end
