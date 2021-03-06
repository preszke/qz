require 'rails_helper'

RSpec.describe "lessons/new", :type => :view do
  before(:each) do
    assign(:lesson, Lesson.new(
      :user => nil,
      :lesson_title => "MyText"
    ))
  end

  it "renders new lesson form" do
    render

    assert_select "form[action=?][method=?]", lessons_path, "post" do

      assert_select "input#lesson_user_id[name=?]", "lesson[user_id]"

      assert_select "textarea#lesson_lesson_title[name=?]", "lesson[lesson_title]"
    end
  end
end
