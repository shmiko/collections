class ReleaseTracksController < ApplicationController
  # GET /release_tracks
  # GET /release_tracks.json
  def index
    @release_tracks = ReleaseTrack.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @release_tracks }
    end
  end

  # GET /release_tracks/1
  # GET /release_tracks/1.json
  def show
    @release_track = ReleaseTrack.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @release_track }
    end
  end

  # GET /release_tracks/new
  # GET /release_tracks/new.json
  def new
    @release_track = ReleaseTrack.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @release_track }
    end
  end

  # GET /release_tracks/1/edit
  def edit
    @release_track = ReleaseTrack.find(params[:id])
  end

  # POST /release_tracks
  # POST /release_tracks.json
  def create
    @release_track = ReleaseTrack.new(params[:release_track])

    respond_to do |format|
      if @release_track.save
        format.html { redirect_to @release_track, notice: 'Release track was successfully created.' }
        format.json { render json: @release_track, status: :created, location: @release_track }
      else
        format.html { render action: "new" }
        format.json { render json: @release_track.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /release_tracks/1
  # PUT /release_tracks/1.json
  def update
    @release_track = ReleaseTrack.find(params[:id])

    respond_to do |format|
      if @release_track.update_attributes(params[:release_track])
        format.html { redirect_to @release_track, notice: 'Release track was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @release_track.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /release_tracks/1
  # DELETE /release_tracks/1.json
  def destroy
    @release_track = ReleaseTrack.find(params[:id])
    @release_track.destroy

    respond_to do |format|
      format.html { redirect_to release_tracks_url }
      format.json { head :no_content }
    end
  end
end
