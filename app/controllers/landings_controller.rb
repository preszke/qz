class LandingsController < ApplicationController
  def index
     #Find all the lessons with word 'dog'
     @lessons_with_word_dog = Lesson.search 'dog'
  end
end
