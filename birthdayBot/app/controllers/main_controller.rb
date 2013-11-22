class MainController < ApplicationController
  def new

  end

  def post

    @post.answers.push(Post.all.sample)

    response = {post: @post,
                quote: @post.posts.last}

    @post = current_user.facebook.put_wall_post(params[:message])
    redirect_to root_path

    render json: response
  end
end
