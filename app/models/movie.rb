class Movie	< ActiveRecord::Base
	def create
		Movi.create(movie_param)
	end
	
	private
	def movie_param
		params.require(:movi).permit(:title, :rating, :description, :release_date)
	end
end
