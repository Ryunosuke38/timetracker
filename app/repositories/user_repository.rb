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

  def projects_for_user(id)
    with_memberships(id).first.memberships.map do |m|
      ProjectRepository.new(ROM.env)[m.project_id]
    end
  end
end
