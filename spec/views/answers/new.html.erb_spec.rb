require 'rails_helper'

RSpec.describe "answers/new", :type => :view do
  before(:each) do
    assign(:answer, Answer.new(
      :question => nil,
      :correct => false,
      :answer => "MyText"
    ))
  end

  it "renders new answer form" do
    render

    assert_select "form[action=?][method=?]", answers_path, "post" do

      assert_select "input#answer_question_id[name=?]", "answer[question_id]"

      assert_select "input#answer_correct[name=?]", "answer[correct]"

      assert_select "textarea#answer_answer[name=?]", "answer[answer]"
    end
  end
end
