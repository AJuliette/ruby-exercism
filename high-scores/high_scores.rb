class HighScores
  def initialize(scores)
		@scores = scores
	end

	def scores
		@scores
	end

	def latest
		@scores.last
	end

	def personal_best
		@scores.reduce do |best, score|
			best > score ? best : score
		end
	end

	def personal_top_three
		*other, third_best, second_best, first_best = @scores.sort
		[first_best, second_best, third_best].compact
	end

	def latest_is_personal_best?
		latest == personal_best
	end
end
