class AnswerSerializer < ActiveModel::Serializer
	attributes :content,:user,:question
	def question
		return object.question
	end
	def user
		return object.user 
	end
end