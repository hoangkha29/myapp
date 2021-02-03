class CommentsController < ApplicationController
  attr_reader :article

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(comment_params)
    # @comment = @article.comments.where('status == "publish"', params[:status])
    if @comment.save
      respond_to do |format|
        format.html {respond_to article_path @article, @comment}
        format.js   # -> create.js
      end
    else
      render @article
    end
    # redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy

    flash[:success] = "Comment deleted"
    redirect_to article_path(@article)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body, :status)
  end
end
