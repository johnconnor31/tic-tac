class Comment < ActiveRecord::Base
	belongs_to :game
	# private def create
	# 	game_id = params[:q_id]
	# 	Comment.create(game_id,params[:email],params[:body])
	# end
end
