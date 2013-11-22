class MainController < ApplicationController
  def new

  end

  def post
    @post = current_user.facebook.put_wall_post(params[:message])
    redirect_to root_path

    @post.answers.push(Quote.all.sample)

    response = {post: @post,
                quote: @post.quotes.last}

    render json: response
  end
end
