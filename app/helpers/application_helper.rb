module ApplicationHelper

	def random_comment
  user_id = User.where(bot: true).sample.id
  message = Faker::TvShows::RuPaul.quote
  Comment.create!(message: message, user_id: user_id)
	end

	def profile_pic(user)
    if user.avatar.url != nil
      user.avatar.url
    elsif user.autopic != nil
      user.autopic
    else
      'default.png'
    end
    
  end

end
