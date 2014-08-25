class LandingsController < ApplicationController
  def index
    #Find all the lessons with word 'dog'
    @lessons = Lesson.search params[:search_title], page: params[:page], per_page: 2
    @last_lessons = Lesson.last(5).reverse
  end
end
