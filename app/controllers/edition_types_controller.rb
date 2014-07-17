class EditionTypesController < ApplicationController
  # GET /edition_types
  # GET /edition_types.json
  def index
    @edition_types = EditionType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @edition_types }
    end
  end

  # GET /edition_types/1
  # GET /edition_types/1.json
  def show
    @edition_type = EditionType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @edition_type }
    end
  end

  # GET /edition_types/new
  # GET /edition_types/new.json
  def new
    @edition_type = EditionType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @edition_type }
    end
  end

  # GET /edition_types/1/edit
  def edit
    @edition_type = EditionType.find(params[:id])
  end

  # POST /edition_types
  # POST /edition_types.json
  def create
    @edition_type = EditionType.new(params[:edition_type])

    respond_to do |format|
      if @edition_type.save
        format.html { redirect_to @edition_type, notice: 'Edition type was successfully created.' }
        format.json { render json: @edition_type, status: :created, location: @edition_type }
      else
        format.html { render action: "new" }
        format.json { render json: @edition_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /edition_types/1
  # PUT /edition_types/1.json
  def update
    @edition_type = EditionType.find(params[:id])

    respond_to do |format|
      if @edition_type.update_attributes(params[:edition_type])
        format.html { redirect_to @edition_type, notice: 'Edition type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @edition_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /edition_types/1
  # DELETE /edition_types/1.json
  def destroy
    @edition_type = EditionType.find(params[:id])
    @edition_type.destroy

    respond_to do |format|
      format.html { redirect_to edition_types_url }
      format.json { head :no_content }
    end
  end
end
