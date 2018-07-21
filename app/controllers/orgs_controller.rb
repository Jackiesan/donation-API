class OrgsController < ApplicationController

  def index
      data = OrgWrapper.fetch(params[:ein])
      render status: :ok, json: data
  end

end
