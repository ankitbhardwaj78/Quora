class Answer < ActiveRecord::Base
  belongs_to :User
  belongs_to :Question
  has_paper_trail
end
