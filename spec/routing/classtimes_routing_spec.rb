require "spec_helper"

describe ClasstimesController do
  describe "routing" do

    it "routes to #index" do
      get("/classtimes").should route_to("classtimes#index")
    end

    it "routes to #new" do
      get("/classtimes/new").should route_to("classtimes#new")
    end

    it "routes to #show" do
      get("/classtimes/1").should route_to("classtimes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/classtimes/1/edit").should route_to("classtimes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/classtimes").should route_to("classtimes#create")
    end

    it "routes to #update" do
      put("/classtimes/1").should route_to("classtimes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/classtimes/1").should route_to("classtimes#destroy", :id => "1")
    end

  end
end
