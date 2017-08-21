class Downupvote < ActiveRecord::Base
  belongs_to :User
  belongs_to :Question
end
