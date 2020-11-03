require 'rails_helper'

RSpec.describe CreateNewsfeedService, type: :service do
  describe "#call" do
    subject(:call) { described_class.new(attributes).call }

    let(:attributes) do
      { title: "Title of news", content: "Lonng textt"}
    end


    it "outcome to be success" do
      expect(call).to be_success
    end

     it "create a newsfeed" do
      expect { call }.to change(Newsfeed, :count).by(1)
    end
  end
end