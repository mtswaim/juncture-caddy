class ArticlesController < ApplicationController
  # POST /articles
  def create
    @article = Article.new(article_params)
    if @article.save
      render json: @article, status: 201
    else
      render error: { error: 'Unable to create article' }, status: 400
    end
  end

  # Get /articles
  def index
    @articles = Article.all
    render json: @articles
  end


  private

  def article_params
    params.require(:article).permit(:title, :content, :author, :category, :published_at)
  end
end
