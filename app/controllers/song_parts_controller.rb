class SongPartsController < ApplicationController
  # GET /song_parts
  # GET /song_parts.json
  def index
    @song_parts = SongPart.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @song_parts }
    end
  end

  # GET /song_parts/1
  # GET /song_parts/1.json
  def show
    @song_part = SongPart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @song_part }
    end
  end

  # GET /song_parts/new
  # GET /song_parts/new.json
  def new
    @song_part = SongPart.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @song_part }
    end
  end

  # GET /song_parts/1/edit
  def edit
    @song_part = SongPart.find(params[:id])
  end

  # POST /song_parts
  # POST /song_parts.json
  def create
    @song_part = SongPart.new(params[:song_part])

    respond_to do |format|
      if @song_part.save
        format.html { redirect_to @song_part, notice: 'Song part was successfully created.' }
        format.json { render json: @song_part, status: :created, location: @song_part }
      else
        format.html { render action: "new" }
        format.json { render json: @song_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /song_parts/1
  # PUT /song_parts/1.json
  def update
    @song_part = SongPart.find(params[:id])

    respond_to do |format|
      if @song_part.update_attributes(params[:song_part])
        format.html { redirect_to @song_part, notice: 'Song part was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @song_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /song_parts/1
  # DELETE /song_parts/1.json
  def destroy
    @song_part = SongPart.find(params[:id])
    @song_part.destroy

    respond_to do |format|
      format.html { redirect_to song_parts_url }
      format.json { head :no_content }
    end
  end
end
