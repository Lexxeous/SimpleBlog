class PostsController < ApplicationController
	#Make a funcName.html.erb view for nearly all methods specified in a controller
	#Use singular names for Models and plural names for Controllers

	http_basic_authenticate_with name: "Alex", password: "1234", except: [:index, :show]

	before_action :get, only: [:show, :edit, :update, :destroy]

	def get
		@post = Post.find(params[:id]) #get/show the single post
	end


	def index
		@posts = Post.all
	end


	def show
		
	end


	def new
		@post = Post.new
	end


	def create
		#render plain: params[:post].inspect
		@post = Post.new(post_params) #new post with title and body
		if (@post.save) #save the new post
			redirect_to @post #redirect the page to the new post created
		else
			render 'new'
		end
	end


	def edit
		
	end


	def update
		if (@post.update(post_params)) #save the new post
			redirect_to @post #redirect the page to the new post created
		else
			render 'edit'
		end
	end


	def destroy
		@post.destroy
		redirect_to posts_path
	end


	private def post_params #not accessible by user
		params.require(:post).permit(:title, :body)
	end
end
