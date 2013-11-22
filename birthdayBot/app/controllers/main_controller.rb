class MainController < ApplicationController


  def new
    unless current_user
      redirect_to login_path
    end
  end

  def post
    @post = current_user.facebook.put_wall_post(params[:message])
    redirect_to root_path
  end

end
