class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to @blog, notice: 'Blog was successfully created.'
    else
      render :new
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content, :author_id)
  end
end
