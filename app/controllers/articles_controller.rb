class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def new
    byebug
    @article = Article.new
    byebug
  end

  def create
    byebug
    @user = User.find(params[:user_id])
    @article = Article.create(article_params)
    @article.user = @user
    @article.save
    redirect_to @article
    #redirect_to user_path(@user)
  end

  def edit
      @article = Article.find(params[:id])
    end
  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
