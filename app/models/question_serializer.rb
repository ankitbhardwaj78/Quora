class QuestionSerializer < ActiveModel::Serializer
attributes :content,:user
def user
	return object.user if object.user
		return {
			User_id: "Anonymous"
		}
		
end

end