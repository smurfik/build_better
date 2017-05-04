class ProjectsController < ApplicationController
  before_action :auth_user

  def index
    if current_user.admin?
      @projects = current_user.company.projects
    else
      @projects = current_user.projects
    end
  end

  def new
    if current_user.admin?
      @project = current_user.projects.new
    else
      redirect to projects_path
    end
  end

  def show
    if current_user.admin?
      @project = current_user.company.projects.find(params[:id])
    else
      @project = current_user.projects.find(params[:id])
    end
  end

  def create
    @project = current_user.company.projects.new(project_params)
    @project.image_url = "placeholder_project_photo.png"
    if @project.save
      flash[:success] = "The project was added"
      redirect_to projects_path
    else
      flash[:notice] = "Check the error messages and try again"
      render :new
    end
  end

  def edit
    @project = current_user.company.projects.find(params[:id])
  end

  def update
    @project = current_user.company.projects.find(params[:id])
    if @project.update(project_params)
      flash[:success] = "The project was updated"
      redirect_to project_path(@project.id)
    else
      flash[:notice] = "Check the error messages and try again"
      render :edit
    end
  end

  def destroy
    current_user.company.projects.find(params[:id]).destroy
    redirect_to projects_path, notice: "The project was deleted!"
  end

  private
  def project_params
    params.require(:project).permit(
      :name,
      :description,
      address_attributes: [:street, :city, :state, :zip]
    )
  end
end

