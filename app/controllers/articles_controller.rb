class ArticlesController < ApplicationController
before_action :set_articles, only: [ :show, :edit, :update ]


  def show
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(articles_params)
    @article.save
    redirect_to article_path(@article)
  end

  def edit
  end

  def update
    @article.update(articles_params)
     redirect_to article_path(@article)
  end


  def destroy
    @task = Article.delete(params[:id])
    redirect_to articles_path
  end


  private

  def set_articles
    @article = Article.find(params[:id])
  end

  def articles_params
      params.require(:article).permit(:title, :content, :id)
  end

end
