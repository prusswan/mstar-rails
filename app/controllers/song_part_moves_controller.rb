class SongPartMovesController < ApplicationController
  # GET /song_part_moves
  # GET /song_part_moves.json
  def index
    @song_part_moves = SongPartMove.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @song_part_moves }
    end
  end

  # GET /song_part_moves/1
  # GET /song_part_moves/1.json
  def show
    @song_part_move = SongPartMove.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @song_part_move }
    end
  end

  # GET /song_part_moves/new
  # GET /song_part_moves/new.json
  def new
    @song_part_move = SongPartMove.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @song_part_move }
    end
  end

  # GET /song_part_moves/1/edit
  def edit
    @song_part_move = SongPartMove.find(params[:id])
  end

  # POST /song_part_moves
  # POST /song_part_moves.json
  def create
    @song_part_move = SongPartMove.new(params[:song_part_move])

    respond_to do |format|
      if @song_part_move.save
        format.html { redirect_to @song_part_move, notice: 'Song part move was successfully created.' }
        format.json { render json: @song_part_move, status: :created, location: @song_part_move }
      else
        format.html { render action: "new" }
        format.json { render json: @song_part_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /song_part_moves/1
  # PUT /song_part_moves/1.json
  def update
    @song_part_move = SongPartMove.find(params[:id])

    respond_to do |format|
      if @song_part_move.update_attributes(params[:song_part_move])
        format.html { redirect_to @song_part_move, notice: 'Song part move was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @song_part_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /song_part_moves/1
  # DELETE /song_part_moves/1.json
  def destroy
    @song_part_move = SongPartMove.find(params[:id])
    @song_part_move.destroy

    respond_to do |format|
      format.html { redirect_to song_part_moves_url }
      format.json { head :no_content }
    end
  end
end
