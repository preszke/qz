require 'rails_helper'

RSpec.describe "answers/index", :type => :view do
  before(:each) do
    assign(:answers, [
      Answer.create!(
        :question => nil,
        :correct => false,
        :answer => "MyText"
      ),
      Answer.create!(
        :question => nil,
        :correct => false,
        :answer => "MyText"
      )
    ])
  end

  it "renders a list of answers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
