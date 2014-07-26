require 'rails_helper'

RSpec.describe "questions/new", :type => :view do
  before(:each) do
    assign(:question, Question.new(
      :lesson => nil,
      :question => "MyText",
      :question_type => 1
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "input#question_lesson_id[name=?]", "question[lesson_id]"

      assert_select "textarea#question_question[name=?]", "question[question]"

      assert_select "input#question_question_type[name=?]", "question[question_type]"
    end
  end
end
