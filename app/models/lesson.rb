class Lesson < ActiveRecord::Base
  searchkick
  belongs_to :user
  has_many :questions
  acts_as_votable 
end
