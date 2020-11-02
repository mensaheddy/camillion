require 'rails_helper'

RSpec.describe NewsfeedController, type: :controller do

  describe "create" do
    subject(:post_to_create) do
      post :create, params: newsfeed_params
    end

    let(:newsfeed_params) do
      {
        newsfeed:{
          title: "Title",
          content: "long text"
        }
     }
    end

    context "success" do
      it "create newsfeed" do
        expect do
          post_to_create
        end.to change(Newsfeed, :count).by(1)
      end

      it "render json" do
        post_to_create
        expect(JSON.parse(response.body)).to eq({ "success" => true })
      end
    end
  end
end