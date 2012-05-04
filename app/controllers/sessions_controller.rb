class SessionsController < ApplicationController
  def new
	@title = "登录"
  end
  
  def create
	user = User.authenticate(params[:session][:email],params[:session][:password])
	if user.nil?
		flash.now[:error] = "您的账户或密码不对！"
		@title = "注册"
		render 'new'
	else
	#验证
	sign_in user
	#授权
	admin? user
	#合理的跳转
	#redirect_back_or user
	end
  end
  
  def destroy
	sign_out
	redirect_to users_path
  end
end
