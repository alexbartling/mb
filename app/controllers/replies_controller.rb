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
end
