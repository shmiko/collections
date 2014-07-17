class FormatTypesController < ApplicationController
  # GET /format_types
  # GET /format_types.json
  def index
    @format_types = FormatType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @format_types }
    end
  end

  # GET /format_types/1
  # GET /format_types/1.json
  def show
    @format_type = FormatType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @format_type }
    end
  end

  # GET /format_types/new
  # GET /format_types/new.json
  def new
    @format_type = FormatType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @format_type }
    end
  end

  # GET /format_types/1/edit
  def edit
    @format_type = FormatType.find(params[:id])
  end

  # POST /format_types
  # POST /format_types.json
  def create
    @format_type = FormatType.new(params[:format_type])

    respond_to do |format|
      if @format_type.save
        format.html { redirect_to @format_type, notice: 'Format type was successfully created.' }
        format.json { render json: @format_type, status: :created, location: @format_type }
      else
        format.html { render action: "new" }
        format.json { render json: @format_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /format_types/1
  # PUT /format_types/1.json
  def update
    @format_type = FormatType.find(params[:id])

    respond_to do |format|
      if @format_type.update_attributes(params[:format_type])
        format.html { redirect_to @format_type, notice: 'Format type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @format_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /format_types/1
  # DELETE /format_types/1.json
  def destroy
    @format_type = FormatType.find(params[:id])
    @format_type.destroy

    respond_to do |format|
      format.html { redirect_to format_types_url }
      format.json { head :no_content }
    end
  end
end
