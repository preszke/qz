class Lesson < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  acts_as_votable 
end
