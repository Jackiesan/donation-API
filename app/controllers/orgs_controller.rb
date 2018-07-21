class OrgsController < ApplicationController

  def index
    if params[:ein]
      data = OrgWrapper.fetch(params[:ein])
      render status: :ok, json: data
    else
      data = OrgWrapper.fetch_all
      render status: :ok, json: data
    end
  end

end
