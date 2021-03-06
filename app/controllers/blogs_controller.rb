class BlogsController < ApplicationController
  def show
  end

  def index
  	@blog = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
  	blog = Blog.new(blog_params)
  	blog.save
  	redirect_to blogs_path
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end
end
