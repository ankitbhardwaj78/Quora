class Question < ActiveRecord::Base
  belongs_to :User
  has_many :answers
  has_paper_trail

  def can_upvote
    vote=Upvote.where(Question_id:id,User_id: 1).first
    if vote
      if vote.category.eql?("upvote")
          return "Upvoted"
        end
    end
    return "Upvote"
  end


  def can_downvote
    vote=Upvote.where(Question_id:id,User_id: 1).first
    if vote
      if vote.category.eql?("downvote")
      return "Downvoted"
        end
    end
    return "downvote"
  end

    def to_s
    content
  end

end
