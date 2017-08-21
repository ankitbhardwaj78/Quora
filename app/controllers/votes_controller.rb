class VotesController < ApplicationController

  def voted
    puts params
        @question_id=params["question_id"]
        vote=Upvote.where(Question_id:@question_id,User_id: 1).first
        if vote
          if vote.category.eql?("upvote")
            @upvote=false
            @downvote=true
          else
            @downvote=false
            @upvote=true
          end
          vote.destroy!
        else
        vote=Upvote.new
        vote.Question_id=params["question_id"]
        vote.User_id=1
        vote.category=params["type"]
        vote.save
        if vote.category.eql?("upvote")
          @upvote=true
          @downvote=false
        else
          @downvote=true
          @upvote=false
        end
        end
    puts @upvote
    respond_to do |format|
      format.js{

      }
    end

  end

end
