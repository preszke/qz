class Question < ActiveRecord::Base
  belongs_to :lesson
  has_many :answers
  acts_as_votable 
end
