require "spec_helper"

describe SongPartMovesController do
  describe "routing" do

    it "routes to #index" do
      get(song_part_moves_path).should route_to("song_part_moves#index")
    end

    it "routes to #new" do
      get(new_song_part_move_path).should route_to("song_part_moves#new")
    end

    it "routes to #show" do
      get(song_part_move_path(1)).should route_to("song_part_moves#show", :id => "1")
    end

    it "routes to #edit" do
      get(edit_song_part_move_path(1)).should route_to("song_part_moves#edit", :id => "1")
    end

    it "routes to #create" do
      post(song_part_moves_path).should route_to("song_part_moves#create")
    end

    it "routes to #update" do
      put(song_part_move_path(1)).should route_to("song_part_moves#update", :id => "1")
    end

    it "routes to #destroy" do
      delete(song_part_move_path(1)).should route_to("song_part_moves#destroy", :id => "1")
    end

  end
end
