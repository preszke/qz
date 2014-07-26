class LandingsController < ApplicationController
  def index
    #Find all the lessons with word 'dog'
    @lessons = Lesson.search params[:search_title]
  end

end
