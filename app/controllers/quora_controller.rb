class QuoraController < ApiController


	def index
		data={}
		data["question"]=Question.all
		return response_data data,"all questions",200
	end

end