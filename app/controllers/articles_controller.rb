class ArticlesController < ApplicationController
  before_filter :authorize
  def show
    @article = Article.find(params[:id])
  end

  def new
    byebug
    @article = Article.new
    byebug
  end

  def create

    @user = User.find(params[:user_id])
    @article = @user.articles.create(article_params)
    redirect_to user_path(@user)
  end

  def edit
      @article = Article.find(params[:id])
    end
  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
