class HomesController < ApplicationController
	 autocomplete :question, :content
  def index

		respond_to do |format|
			format.html{
				@question=Question.new
				@answer=Answer.new
				@offset=10
				@allquestion=Question.limit(@offset);
			}
			format.js{
        offset=params["offset"]
				if offset
					offset = offset.to_i
				else
					offset = 0
				end

				@newoffset=offset+10
				puts @newoffset
				@show_load_more = @newoffset-10 < Question.count
				@allquestion= Question.offset(offset).limit(@newoffset)
			}


			end
  end

def search_result


end	

def search
title=params["question"]
question=Question.find_by_content(title)
unless question
question="not found"	
end
return redirect_to '/homes/search_result'

end

def show
	puts params
@question=Question.find(params[:id])
end

def edited
@question=Question.find(params[:id])
end

end
