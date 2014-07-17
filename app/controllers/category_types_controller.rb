class CategoryTypesController < ApplicationController
  # GET /category_types
  # GET /category_types.json
  def index
    @category_types = CategoryType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @category_types }
    end
  end

  # GET /category_types/1
  # GET /category_types/1.json
  def show
    @category_type = CategoryType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @category_type }
    end
  end

  # GET /category_types/new
  # GET /category_types/new.json
  def new
    @category_type = CategoryType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @category_type }
    end
  end

  # GET /category_types/1/edit
  def edit
    @category_type = CategoryType.find(params[:id])
  end

  # POST /category_types
  # POST /category_types.json
  def create
    @category_type = CategoryType.new(params[:category_type])

    respond_to do |format|
      if @category_type.save
        format.html { redirect_to @category_type, notice: 'Category type was successfully created.' }
        format.json { render json: @category_type, status: :created, location: @category_type }
      else
        format.html { render action: "new" }
        format.json { render json: @category_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /category_types/1
  # PUT /category_types/1.json
  def update
    @category_type = CategoryType.find(params[:id])

    respond_to do |format|
      if @category_type.update_attributes(params[:category_type])
        format.html { redirect_to @category_type, notice: 'Category type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @category_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_types/1
  # DELETE /category_types/1.json
  def destroy
    @category_type = CategoryType.find(params[:id])
    @category_type.destroy

    respond_to do |format|
      format.html { redirect_to category_types_url }
      format.json { head :no_content }
    end
  end
end
