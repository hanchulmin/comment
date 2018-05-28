class HomeController < ApplicationController
  def index
    @post = Post.all
    @select_post = Post.where(:title => params[:search])
  end

  def create
    new_post = Post.new
    new_post.title = params[:title]
    new_post.content = params[:content]
    new_post.save
    
    redirect_to '/home/index'
  end

  def delete
    delete_post = Post.find(params[:id])
    delete_post.destroy
    
    redirect_to '/home/index'  
  end

  def edit
    @edit_post = Post.find(params[:id])
  end

  def update
    update_post = Post.find(params[:id])
    update_post.title = params[:title]
    update_post.content = params[:content]
    update_post.save
    
    redirect_to '/home/index'
  end
  
  def show
    @show_post = Post.find(params[:id])
    @comment = @show_post.comments
  end
  
end
