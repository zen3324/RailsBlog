class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params[:id])	

		if @post.save
			redirect_to posts_path
		else
			render action: 'new'	
		end
	end
end
