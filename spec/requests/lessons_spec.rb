require 'rails_helper'

RSpec.describe "Lessons", :type => :request do
  describe "GET /lessons" do
    it "works! (now write some real specs)" do
      get lessons_path
      expect(response.status).to be(200)
    end
  end
end
