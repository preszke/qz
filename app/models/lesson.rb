class Lesson < ActiveRecord::Base
  belongs_to :user
  has_many :questions
end
