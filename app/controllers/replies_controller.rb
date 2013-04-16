class RepliesController < ApplicationController
  def create
  	@reply = Reply.create(params[:reply])
  	if @reply.save
  		flash[:success] = "Your reply has been submitted"
  		redirect_to @reply.post
  	else
  		flash[:error] = @reply.errors.full_messages.to_sentence
  	end
  end

  def new
  end

  def destroy
    reply = Reply.find(params[:id])
    reply.destroy
    redirect_to :back
    flash[:success] = "You have deleted your comment"
  end
end
