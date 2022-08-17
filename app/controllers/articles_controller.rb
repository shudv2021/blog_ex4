require 'pry'
class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit]
  before_action :current_article, only: [:show, :edit, :update]
  
  def index
    @articles = Article.all
  end
  
  def show
  end
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to articles_path
    else
      render :new
    end
  end
  
  def edit
  end
  
  def update
    if current_user.id == @article.user_id
      @article.text = article_params[:text]
      @article.title = article_params[:title]
      @article.save
            
      redirect_to article_path
    else
      flash.alert = "This isn't your article you can't change it"
      redirect_to articles_path
    end
  end
  
  private
  
  def current_article
    @article = Article.find(params[:id])
  end
  
  def article_params
    params.require(:article).permit(:title, :text, :user_id)
  end

end
