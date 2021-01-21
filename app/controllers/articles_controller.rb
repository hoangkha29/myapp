class ArticlesController < ApplicationController

  def index
      # if params[:id]
      #   @articles = Article.where('id < ?', params[:id]).limit(3)
      # else
      #   @articles = Article.all
      # end
      # respond_to do |format|
      #   format.html
      #   format.js
      # end
      @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      flash[:notice] = "Post was successfully created"
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      flash[:notice] = "Post was successfully edited"
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  # def viewmore
  #   if params[:id]
  #     @articles = Article.where('id < ?', params[:id]).limit(3)
  #   else
  #     @articles = @articles.limit(3)
  #   end
  #   respond_to do |format|
  #     format.html
  #     format.js
  #   end
  # end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
