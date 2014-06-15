class ArticlesController < ApplicationController
  include ArticlesHelper

  def get_article
    @article = Article.find(params[:id])
  end

  def index
    @article = Article.all
  end

  def show
    get_article
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    flash.notice = "'#{@article.title}' now posted!"
    redirect_to article_path(@article)
  end

  def destroy
    get_article
    @article.destroy
    flash.notice = "Article deleted"
    redirect_to root_path
  end

  def edit
    get_article
  end

  def update
    get_article
    @article.update(article_params)
    flash.notice = "'#{@article.title}' was updated!"
    redirect_to article_path(@article)
  end

end
