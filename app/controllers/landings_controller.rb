class LandingsController < ApplicationController
  def index
    #Find all the lessons with word 'dog'
    @lessons = Lesson.search params[:search_title], page: params[:page], per_page: 2
  end
end
