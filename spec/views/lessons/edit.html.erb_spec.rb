require 'rails_helper'

RSpec.describe "lessons/edit", :type => :view do
  before(:each) do
    @lesson = assign(:lesson, Lesson.create!(
      :user => nil,
      :lesson_title => "MyText"
    ))
  end

  it "renders the edit lesson form" do
    render

    assert_select "form[action=?][method=?]", lesson_path(@lesson), "post" do

      assert_select "input#lesson_user_id[name=?]", "lesson[user_id]"

      assert_select "textarea#lesson_lesson_title[name=?]", "lesson[lesson_title]"
    end
  end
end
