class RecordingTypesController < ApplicationController
  # GET /recording_types
  # GET /recording_types.json
  def index
    @recording_types = RecordingType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recording_types }
    end
  end

  # GET /recording_types/1
  # GET /recording_types/1.json
  def show
    @recording_type = RecordingType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recording_type }
    end
  end

  # GET /recording_types/new
  # GET /recording_types/new.json
  def new
    @recording_type = RecordingType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recording_type }
    end
  end

  # GET /recording_types/1/edit
  def edit
    @recording_type = RecordingType.find(params[:id])
  end

  # POST /recording_types
  # POST /recording_types.json
  def create
    @recording_type = RecordingType.new(params[:recording_type])

    respond_to do |format|
      if @recording_type.save
        format.html { redirect_to @recording_type, notice: 'Recording type was successfully created.' }
        format.json { render json: @recording_type, status: :created, location: @recording_type }
      else
        format.html { render action: "new" }
        format.json { render json: @recording_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recording_types/1
  # PUT /recording_types/1.json
  def update
    @recording_type = RecordingType.find(params[:id])

    respond_to do |format|
      if @recording_type.update_attributes(params[:recording_type])
        format.html { redirect_to @recording_type, notice: 'Recording type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recording_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recording_types/1
  # DELETE /recording_types/1.json
  def destroy
    @recording_type = RecordingType.find(params[:id])
    @recording_type.destroy

    respond_to do |format|
      format.html { redirect_to recording_types_url }
      format.json { head :no_content }
    end
  end
end
