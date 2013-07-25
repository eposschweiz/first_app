class Micropost < ActiveRecord::Base
	
	validates :content, length: { maximum: 140 }
	belongs_to :user
	def microposts_params
		:params.require(:user_id, :micropost).permit(:user_id, :micropost)
	end
end

