class CommentsController < ApplicationController

	http_basic_authenticate_with name: "Alex", password: "1234", only: [:destroy]

	before_action :get, only: [:create, :destroy]

	def get
		@post = Post.find(params[:post_id]) #get/show the single post
	end


	def index

	end


	def show

	end


	def new

	end


	def create
		@comment = @post.comments.create(comment_params)
		redirect_to post_path(@post)
	end


	def edit

	end


	def update

	end


	def destroy
		@comment = @post.comments.find(params[:id])
		@comment.destroy
		redirect_to post_path(@post)
	end


	private def comment_params
		params.require(:comment).permit(:username, :body)
	end
end
