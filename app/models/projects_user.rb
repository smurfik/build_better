class ProjectsUser < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :user_id, uniqueness: {
    scope: :project_id,
    message: "The user already assigned to the project"
  }
end
