class ApplicationController < ActionController::Base
  def render_def
    @user_posts = UserPost.all
    render 'application'
  end
end
