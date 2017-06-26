class ArticlesController < ApplicationController
  def new
    @articles = Article.new
  end

  def index
    @articles = Article.all
  end

  def edit
    @articles = Article.find(params[:id])
  end

  def show
    @articles = Article.find(params[:id])
  end

  def update
    @articles = Article.find(params[:id])
    p @articles
    if @articles.update(articles_params)
      redirect_to @articles
    else
      render 'edit'
    end
  end

  def create
    @articles = Article.new(articles_params)
    if @articles.save
      redirect_to @articles
    else
      render 'new'
    end
  end

  def destroy
    @articles = Article.find(params[:id])
    if @articles.destroy
      redirect_to @articles
    end
  end

  private
    def articles_params
      p params
      params.require(:article).permit(:title,:text)
    end
end
