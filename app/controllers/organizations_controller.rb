class OrganizationsController < ApplicationController
  def index
    if params[:category_id]
      category = Category.find_by(id: params[:category_id])
      organizations = category.organizations
    else
      organizations = Organization.all
    end
    render json: {status: 'SUCCESS', message: 'Loaded organizations', data: organizations }, status: :ok
  end

  def show
    organization = Organization.find(params[:id])
    render json: {status: 'SUCCESS', message: 'Loaded organization', data: organization }, status: :ok
  end
end
