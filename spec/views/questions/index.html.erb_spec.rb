require 'rails_helper'

RSpec.describe "questions/index", :type => :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :lesson => nil,
        :question => "MyText",
        :question_type => 1
      ),
      Question.create!(
        :lesson => nil,
        :question => "MyText",
        :question_type => 1
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
