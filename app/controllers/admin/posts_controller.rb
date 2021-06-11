class Admin::PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def show
		@post = Post.find(params[:id])	
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to admin_post_path(@post)
		end
	end

	def destroy
		@post = Post.find(params[:id])
		if @post.destroy
			redirect_to admin_posts_path
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		@post.update(post_params)
		redirect_to admin_post_path(@post)
	end

	private
	def post_params
		params.require(:post).permit(:title, :body, :image)
	end

end
