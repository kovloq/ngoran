class LoginController < ApplicationController
	layout 'login'
  def index
  	@user=User.new
  end

  def action
  	pass=Digest::MD5.hexdigest(params[:user][:password])
  	@user=User.where("email = ? AND encrypted_password = ?",params[:user][:email],pass);
  	# puts @user.to_sql
  	# puts "eek"
  	if @user.present?
  		puts "berhasil"
  		redirect_to root_path
  	else
  		puts "gagal";
  		redirect_to login_path
  	end
  end
end
