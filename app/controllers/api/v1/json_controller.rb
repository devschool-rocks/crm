class Api::V1::JsonController < Api::V1::ApplicationController
  def index
    render json: resources, status: :ok
  end

protected

  def resources
    params[:model].classify.constantize.all
  end
end
