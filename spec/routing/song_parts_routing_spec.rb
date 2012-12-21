require "spec_helper"

describe SongPartsController do
  describe "routing" do

    it "routes to #index" do
      get("/song_parts").should route_to("song_parts#index")
    end

    it "routes to #new" do
      get("/song_parts/new").should route_to("song_parts#new")
    end

    it "routes to #show" do
      get("/song_parts/1").should route_to("song_parts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/song_parts/1/edit").should route_to("song_parts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/song_parts").should route_to("song_parts#create")
    end

    it "routes to #update" do
      put("/song_parts/1").should route_to("song_parts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/song_parts/1").should route_to("song_parts#destroy", :id => "1")
    end

  end
end
