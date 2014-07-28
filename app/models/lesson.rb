class Lesson < ActiveRecord::Base
  searchkick
  belongs_to :user
  has_many :questions
  validates :lesson_title, :length => { minimum: 5 }
  accepts_nested_attributes_for :questions, allow_destroy: true
  acts_as_votable
end
