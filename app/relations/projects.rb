class Projects < ROM::Relation[:sql]
  register_as :projects
  dataset :projects

  # create a subview here?
  # def with_users
  #   ?
  # end
end
