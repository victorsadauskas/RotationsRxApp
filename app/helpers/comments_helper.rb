module CommentsHelper

	def format_rating(rating)
		if rating.blank?
		else
			"Rating: #{rating} / 10 "
		end
	end

	def format_date(date)
		date.strftime('%D')		
	end
end
