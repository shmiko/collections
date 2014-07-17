class AudioTypesController < ApplicationController
  # GET /audio_types
  # GET /audio_types.json
  def index
    @audio_types = AudioType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @audio_types }
    end
  end

  # GET /audio_types/1
  # GET /audio_types/1.json
  def show
    @audio_type = AudioType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @audio_type }
    end
  end

  # GET /audio_types/new
  # GET /audio_types/new.json
  def new
    @audio_type = AudioType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @audio_type }
    end
  end

  # GET /audio_types/1/edit
  def edit
    @audio_type = AudioType.find(params[:id])
  end

  # POST /audio_types
  # POST /audio_types.json
  def create
    @audio_type = AudioType.new(params[:audio_type])

    respond_to do |format|
      if @audio_type.save
        format.html { redirect_to @audio_type, notice: 'Audio type was successfully created.' }
        format.json { render json: @audio_type, status: :created, location: @audio_type }
      else
        format.html { render action: "new" }
        format.json { render json: @audio_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /audio_types/1
  # PUT /audio_types/1.json
  def update
    @audio_type = AudioType.find(params[:id])

    respond_to do |format|
      if @audio_type.update_attributes(params[:audio_type])
        format.html { redirect_to @audio_type, notice: 'Audio type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @audio_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audio_types/1
  # DELETE /audio_types/1.json
  def destroy
    @audio_type = AudioType.find(params[:id])
    @audio_type.destroy

    respond_to do |format|
      format.html { redirect_to audio_types_url }
      format.json { head :no_content }
    end
  end
end
