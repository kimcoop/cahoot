class HomeController < ApplicationController
	before_filter :authenticate_user!

  def index
  	@user_lists = current_user.lists
  end
end
