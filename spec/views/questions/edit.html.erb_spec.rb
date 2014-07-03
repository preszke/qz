require 'rails_helper'

RSpec.describe "questions/edit", :type => :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :lesson => nil,
      :question => "MyText",
      :question_type => 1
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input#question_lesson_id[name=?]", "question[lesson_id]"

      assert_select "textarea#question_question[name=?]", "question[question]"

      assert_select "input#question_question_type[name=?]", "question[question_type]"
    end
  end
end
