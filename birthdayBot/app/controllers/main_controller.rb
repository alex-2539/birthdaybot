class MainController < ApplicationController
  def new

  end

  def post
    @post = Post.all.sample

    @message = [] << @post[:message]
    @link = [] << @post[:link]
    @name = [] << @post[:name]

    @post = current_user.facebook.put_wall_post(@post[:message])
    redirect_to root_path

  end


  def create
    @create = Post.create(params[:post])
    @post = current_user.facebook.put_wall_post(params[:post][:message], {:name => params[:post][:name], :link => params[:post][:link]})
    redirect_to root_path


    # @create = Post.create(params[:post])
    # @message = params[:post][:message]
    # @link = params[:post][:link]
    # @name = params[:post][:name]

    # @post = current_user.facebook.put_wall_post( @message, {:name => @name, :link => @link })
    # redirect_to root_path

  end
end

