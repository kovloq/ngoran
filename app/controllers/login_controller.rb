class LoginController < ApplicationController
	layout 'login'
  def index
  	@user=User.new
  end

  def action
  	pass=Digest::MD5.hexdigest(params[:user][:password])
  	@user=User.where("email = ? AND encrypted_password = ?",params[:user][:email],pass).first;
  	# puts @user.to_sql
  	# puts "eek"
    # puts @user.to_json;
  	if @user.present?
  		puts "berhasil"
      session[:user_id]=@user.id
      session[:name]=@user.name
  		redirect_to root_path
  	else
  		puts "gagal";
  		redirect_to login_path
  	end
  end
end
