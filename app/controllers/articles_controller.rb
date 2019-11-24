class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    w = params.require(:article).permit(:title, :description)
    @article = Article.new
    @article.title = w[:title]
    @article.description = w[:description]
    @article.save
    redirect_to article_path(@article)
  end

  # add edit and update methods here
  def edit
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
    w = params.require(:article).permit(:title, :description)
    article.update(w)
    redirect_to article_path(article)
  end
end
