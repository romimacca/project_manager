class ProjectsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
 
  def new
    @project = Project.new
  end

  def create
    @project = Project.create( 
      name: params[:name], 
      description: params[:description], 
      begin: params[:begin], 
      end: params[:end],
      state: params[:state]
    )
  end

  def dashboard
    if params[:state].present?
      @projects = Project.where('state = ?', params[:state])
    else
      @projects = Project.all
    end

  end
end
