class ArticlesController < ApplicationController
  def new

  end

  def index
    @articles = Article.all
  end

  def show
    @articles = Article.find(params["id"])
  end

  def create
    @articles = Article.new(articles_params)
    if @articles.save
      redirect_to @articles
    else
      render 'new'
    end
  end

  private
    def articles_params
      params.require(:articles).permit(:title,:text)
    end
end
