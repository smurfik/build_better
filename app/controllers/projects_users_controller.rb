class ProjectsUsersController < ApplicationController
  before_action :auth_user

  def create
    @projects_user = ProjectsUser.create(project_id: params[:format], user_id: params[:user_id])
    redirect_to project_path(params[:format])
  end

  def destroy
    Project.find(params[:id]).users.delete(User.find(params[:user_id]))
    redirect_to project_path(params[:id]), notice: "The person was unassigned!"
  end
end
