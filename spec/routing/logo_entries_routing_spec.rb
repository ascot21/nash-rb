require "spec_helper"

describe LogoEntriesController do
  describe "routing" do

    it "routes to #index" do
      get("/logo_entries").should route_to("logo_entries#index")
    end

    it "routes to #new" do
      get("/logo_entries/new").should route_to("logo_entries#new")
    end

    it "routes to #show" do
      get("/logo_entries/1").should route_to("logo_entries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/logo_entries/1/edit").should route_to("logo_entries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/logo_entries").should route_to("logo_entries#create")
    end

    it "routes to #update" do
      put("/logo_entries/1").should route_to("logo_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/logo_entries/1").should route_to("logo_entries#destroy", :id => "1")
    end

  end
end
