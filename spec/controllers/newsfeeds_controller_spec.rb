require 'rails_helper'

RSpec.describe NewsfeedsController, type: :controller do
  let(:response_body) { JSON.parse(response.body) }

  describe "create" do
    subject(:post_to_create) do
      post :create, params: { newsfeed: newsfeed_params }
    end

    let(:newsfeed_params) { attributes_for(:newsfeed) }

    context "success" do
      it "create newsfeed" do
        expect do
          post_to_create
        end.to change(Newsfeed, :count).by(1)
      end

      it "render json" do
        post_to_create
        expect(response_body).to eq({ "success" => false })
      end

      it "response status 200" do
        expect(response).to be_ok
      end
    end

    context "Failure" do
      let(:newsfeed_params) { attributes_for(:newsfeed, title: nil) }

      it "response status 400" do
        post_to_create
        expect(response.status).to be(422)
      end

      it "render json" do
        post_to_create
        expect(response_body).to eq("errors"=>["Title can't be blank"])
      end
    end
  end

  describe "index" do
    context "success" do
      let!(:post_to_create) { create(:newsfeed, title: "it alive", content: "Loong text") }

      it "render newfeed in json" do
        get :index
        expect(response_body.first).to include(
          "content" => "Loong text",
          "title" => "it alive"
        )
      end
    end
  end
end