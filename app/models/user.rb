class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :question
  has_many :answer
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

def as_json options=nil
	UserSerializer.new(self).as_json
end
end
