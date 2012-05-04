module SessionsHelper

	def sign_in(user)
		cookies.permanent.signed[:remember_token] = [user.id, user.salt]
		current_user = user
	end
	
	def signed_in?
		!current_user.nil?
	end
	#目前登陆后的用户才可以申请，并且申请过不能再次申请
	def has_applied?
		current_user.school_user_info.nil?
	end
	
	def current_user=(user)
		@currnet_user = user
	end
	
	def current_user
		@currnet_user ||= user_from_remember_token
	end
	
	def current_user?(user)
		user == current_user
	end
	
	def sign_out
		cookies.delete(:remember_token)
		current_user = nil
	end
	
	def deny_access
		store_location
		redirect_to signin_path, :notice => "请先登录，才有权限"
	end
	
	def redirect_back_or(default)
		redirect_to session[:return_to]|| default, :notice => "登录成功，跳转至登录前界面"
		clear_return_to
	end
	#授权
	def admin?(user)
		if user.flag
			redirect_to :controller => 'home',:action => 'admin_index'
		else
			redirect_to root_path
		end
	end
	
	private
	
		def user_from_remember_token
			User.authenticate_with_salt(*remember_token)
		end
		
		def remember_token
			cookies.signed[:remember_token] || [nil,nil]
		end
		
		def store_location
			session[:return_to] = request.fullpath
		end
		
		def clear_return_to
			session[:return_to] = nil
		end
end
