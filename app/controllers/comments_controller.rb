class CommentsController < ApplicationController
  def create
    @prototype = Prototype.find(params[:prototype_id])
    @comment = @prototype.comments.build(comment_params)

    if @comment.save
      redirect_to prototype_path(@prototype), notice: 'Comment was successfully created.'
    else
      render 'prototypes/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
