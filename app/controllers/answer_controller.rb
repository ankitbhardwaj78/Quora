class AnswerController < ApiController

	def index
		data={}
		data["answer"]=Answer.all.includes(:user,:question)
		return response_data data,"allQuestion",200
	end


	def create
		content=params["content"];
		question_id=params["Question_id"];
		user_id=params["User_id"]
		data=Answer.create content:content, Question_id:question_id,User_id:user_id
		return response_data data,"answer created succesfully",200
	end
end