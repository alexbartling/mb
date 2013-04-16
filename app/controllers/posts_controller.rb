class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
		@reply = Reply.new
	end
	
	def new
		@post = Post.new
	end

	def create
		@post = current_user.posts.build(params[:post])
		if @post.save
			flash[:success] = "Your Post has been created"
			redirect_to current_user
		else
			flash[:notice] = @post.errors.full_messages.to_sentence
			render 'new'
		end
	end
end
