module Api
  module v1
    class ProjectsController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_project, only: [:show, :update, :destroy]

      def index
        @projects = Project.all

        render json: @projects
      end

      def show
        render json: @project
      end

      def update
        if @project.update(projects_params)
          render json: @project
        else
          render json: @project.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @project.destroy
      end

      private

      def set_project
        @project = Project.find(params[:id])
      end

      def project_params(params)
        params.fetch(:project).permit(:title, :description, :stage)
      end
    end
  end
end