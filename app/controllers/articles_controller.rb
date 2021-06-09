class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create

    @article = Article.new(article_params)
    @article.user = current_user
    @article.save
    redirect_to '/'
  end

  def edit
      @article = Article.find(params[:id])
    end
  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
