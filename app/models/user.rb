class User < ActiveRecord::Base
	has_many :microposts
	
	def user_params
		:params.require(:name, :email).permit(:name, :email)
	end
end
