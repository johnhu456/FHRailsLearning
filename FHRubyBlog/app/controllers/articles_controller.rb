class ArticlesController < ApplicationController
  def new

  end

  def create
    render json: params[:articles]
  end
end
