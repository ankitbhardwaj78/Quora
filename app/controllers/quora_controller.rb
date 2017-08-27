class QuoraController < ApiController


	def index
		data={}
		data["question"]=Question.all
		return response_data data,"all questions",200
	end

	def create
		content=params["content"]
		user_id=params["User_id"]
		data=Question.create content:content,User_id:user_id
		return response_data data,"questions added succesfully",200
	end

end