class GradingsController < ApplicationController
  # GET /gradings
  # GET /gradings.json
  def index
    @gradings = Grading.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gradings }
    end
  end

  # GET /gradings/1
  # GET /gradings/1.json
  def show
    @grading = Grading.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grading }
    end
  end

  # GET /gradings/new
  # GET /gradings/new.json
  def new
    @grading = Grading.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grading }
    end
  end

  # GET /gradings/1/edit
  def edit
    @grading = Grading.find(params[:id])
  end

  # POST /gradings
  # POST /gradings.json
  def create
    @grading = Grading.new(params[:grading])

    respond_to do |format|
      if @grading.save
        format.html { redirect_to @grading, notice: 'Grading was successfully created.' }
        format.json { render json: @grading, status: :created, location: @grading }
      else
        format.html { render action: "new" }
        format.json { render json: @grading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gradings/1
  # PUT /gradings/1.json
  def update
    @grading = Grading.find(params[:id])

    respond_to do |format|
      if @grading.update_attributes(params[:grading])
        format.html { redirect_to @grading, notice: 'Grading was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gradings/1
  # DELETE /gradings/1.json
  def destroy
    @grading = Grading.find(params[:id])
    @grading.destroy

    respond_to do |format|
      format.html { redirect_to gradings_url }
      format.json { head :no_content }
    end
  end
end
