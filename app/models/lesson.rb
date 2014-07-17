class Lesson < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  validates :lesson_title, :length => { minimum: 5 }
  validates :question_text, :length => { minimum: 5 }
  acts_as_votable
end
