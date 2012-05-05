require "spec_helper"

describe UserHistoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/user_histories").should route_to("user_histories#index")
    end

    it "routes to #new" do
      get("/user_histories/new").should route_to("user_histories#new")
    end

    it "routes to #show" do
      get("/user_histories/1").should route_to("user_histories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_histories/1/edit").should route_to("user_histories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_histories").should route_to("user_histories#create")
    end

    it "routes to #update" do
      put("/user_histories/1").should route_to("user_histories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_histories/1").should route_to("user_histories#destroy", :id => "1")
    end

  end
end
