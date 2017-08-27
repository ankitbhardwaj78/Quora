class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_paper_trail


  def as_json options=nil
  	AnswerSerializer.new(self).as_json
  end
end
