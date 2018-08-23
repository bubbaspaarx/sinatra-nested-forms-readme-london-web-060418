require_relative 'config/environment'

class App < Sinatra::Base
	get '/new' do
		erb :new
	end

	post '/student' do
		params[:student][:courses].each do |param|
			@course	= Course.new(param)
		end
		@student = Student.new(params[:student])
		@courses = Course.all
		erb :student
	end
end
