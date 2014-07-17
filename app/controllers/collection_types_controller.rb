class CollectionTypesController < ApplicationController
  # GET /collection_types
  # GET /collection_types.json
  def index
    @collection_types = CollectionType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @collection_types }
    end
  end

  # GET /collection_types/1
  # GET /collection_types/1.json
  def show
    @collection_type = CollectionType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @collection_type }
    end
  end

  # GET /collection_types/new
  # GET /collection_types/new.json
  def new
    @collection_type = CollectionType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @collection_type }
    end
  end

  # GET /collection_types/1/edit
  def edit
    @collection_type = CollectionType.find(params[:id])
  end

  # POST /collection_types
  # POST /collection_types.json
  def create
    @collection_type = CollectionType.new(params[:collection_type])

    respond_to do |format|
      if @collection_type.save
        format.html { redirect_to @collection_type, notice: 'Collection type was successfully created.' }
        format.json { render json: @collection_type, status: :created, location: @collection_type }
      else
        format.html { render action: "new" }
        format.json { render json: @collection_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /collection_types/1
  # PUT /collection_types/1.json
  def update
    @collection_type = CollectionType.find(params[:id])

    respond_to do |format|
      if @collection_type.update_attributes(params[:collection_type])
        format.html { redirect_to @collection_type, notice: 'Collection type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @collection_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collection_types/1
  # DELETE /collection_types/1.json
  def destroy
    @collection_type = CollectionType.find(params[:id])
    @collection_type.destroy

    respond_to do |format|
      format.html { redirect_to collection_types_url }
      format.json { head :no_content }
    end
  end
end
