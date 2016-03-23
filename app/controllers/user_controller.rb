class UserController < ApplicationController
	before_action :require_login
  def profile
  	@user=User.find(session[:user_id]);
  end
  def logout
  	reset_session
  	redirect_to login_path
  end
end
