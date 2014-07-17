class ArtistTypesController < ApplicationController
  # GET /artist_types
  # GET /artist_types.json
  def index
    @artist_types = ArtistType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @artist_types }
    end
  end

  # GET /artist_types/1
  # GET /artist_types/1.json
  def show
    @artist_type = ArtistType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @artist_type }
    end
  end

  # GET /artist_types/new
  # GET /artist_types/new.json
  def new
    @artist_type = ArtistType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @artist_type }
    end
  end

  # GET /artist_types/1/edit
  def edit
    @artist_type = ArtistType.find(params[:id])
  end

  # POST /artist_types
  # POST /artist_types.json
  def create
    @artist_type = ArtistType.new(params[:artist_type])

    respond_to do |format|
      if @artist_type.save
        format.html { redirect_to @artist_type, notice: 'Artist type was successfully created.' }
        format.json { render json: @artist_type, status: :created, location: @artist_type }
      else
        format.html { render action: "new" }
        format.json { render json: @artist_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /artist_types/1
  # PUT /artist_types/1.json
  def update
    @artist_type = ArtistType.find(params[:id])

    respond_to do |format|
      if @artist_type.update_attributes(params[:artist_type])
        format.html { redirect_to @artist_type, notice: 'Artist type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @artist_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artist_types/1
  # DELETE /artist_types/1.json
  def destroy
    @artist_type = ArtistType.find(params[:id])
    @artist_type.destroy

    respond_to do |format|
      format.html { redirect_to artist_types_url }
      format.json { head :no_content }
    end
  end
end
