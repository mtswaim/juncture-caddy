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

  # GET /articles
  def index
    @articles = Article.all
    render json: @articles
  end

  # GET /articles/:id
  def show
    @article = Article.find(params[:id])
    render json: @article
  end

  # DELETE /articles/:id
  def destroy
    render error: { error: 'This public API does not allow articles to be deleted or modified' }, status: 405
  end

  # PUT/PATCH /articles/:id
  def update
    render error: { error: 'This public API does not allow articles to be deleted or modified' }, status: 405
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :author, :category, :published_at)
  end
end
