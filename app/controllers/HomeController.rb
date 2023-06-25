class HomeController < ApplicationController
  def index
    @posts = UserPost.all
  end
end
