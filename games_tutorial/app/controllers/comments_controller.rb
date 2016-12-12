class CommentsController < ApplicationController
  def create 
    comment = Comment.new(comment_user)
    if comment.save
    redirect_to game_path(@game)
    else
      redirect_to game_path(@game) , :notice => 'error in adding comment'
    end
  end
  def destroy
  end
  def edit
  end
  def show
  end
  private def comment_user
    params.require(:userComment).permit("id","name","body")
  end
  
end
