class CommentsController < ApplicationController
  http_basic_authenticate_with name: "madao", password: "456852", only: :destroy

  def create
    @articles = Article.find(params[:article_id])
    @comment = @articles.comments.create(comment_params)
    redirect_to @articles
  end

  def destroy
    @articles = Article.find(params[:article_id])
    @comment = @articles.comments.find(params[:id])
    p params
    if @comment.destroy
       redirect_to @articles
    end
  end

  def comment_params
    p params
    params.require(:comment).permit(:commenter,:body)
  end
end
