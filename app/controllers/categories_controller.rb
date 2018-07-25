class CategoriesController < ApplicationController
  def index
    if params[:organization_id]
      organization = Organization.find_by(id: params[:organization_id])
      categories = organization.categories
    else
      categories = Category.all;
    end

    render json: {status: 'SUCCESS', message: 'Loaded categories', data: categories }, status: :ok
  end

  def show
    category = Category.find(params[:id])
    render json: {status: 'SUCCESS', message: 'Loaded category', data: category }, status: :ok
  end
end
