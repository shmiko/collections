class GenreTypesController < ApplicationController
  # GET /genre_types
  # GET /genre_types.json
  def index
    @genre_types = GenreType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @genre_types }
    end
  end

  # GET /genre_types/1
  # GET /genre_types/1.json
  def show
    @genre_type = GenreType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @genre_type }
    end
  end

  # GET /genre_types/new
  # GET /genre_types/new.json
  def new
    @genre_type = GenreType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @genre_type }
    end
  end

  # GET /genre_types/1/edit
  def edit
    @genre_type = GenreType.find(params[:id])
  end

  # POST /genre_types
  # POST /genre_types.json
  def create
    @genre_type = GenreType.new(params[:genre_type])

    respond_to do |format|
      if @genre_type.save
        format.html { redirect_to @genre_type, notice: 'Genre type was successfully created.' }
        format.json { render json: @genre_type, status: :created, location: @genre_type }
      else
        format.html { render action: "new" }
        format.json { render json: @genre_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /genre_types/1
  # PUT /genre_types/1.json
  def update
    @genre_type = GenreType.find(params[:id])

    respond_to do |format|
      if @genre_type.update_attributes(params[:genre_type])
        format.html { redirect_to @genre_type, notice: 'Genre type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @genre_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genre_types/1
  # DELETE /genre_types/1.json
  def destroy
    @genre_type = GenreType.find(params[:id])
    @genre_type.destroy

    respond_to do |format|
      format.html { redirect_to genre_types_url }
      format.json { head :no_content }
    end
  end
end
