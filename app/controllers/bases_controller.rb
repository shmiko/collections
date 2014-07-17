class BasesController < ApplicationController
  # GET /bases
  # GET /bases.json
  def index
    @bases = Base.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bases }
    end
  end

  # GET /bases/1
  # GET /bases/1.json
  def show
    @basis = Base.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @basis }
    end
  end

  # GET /bases/new
  # GET /bases/new.json
  def new
    @basis = Base.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @basis }
    end
  end

  # GET /bases/1/edit
  def edit
    @basis = Base.find(params[:id])
  end

  # POST /bases
  # POST /bases.json
  def create
    @basis = Base.new(params[:basis])

    respond_to do |format|
      if @basis.save
        format.html { redirect_to @basis, notice: 'Base was successfully created.' }
        format.json { render json: @basis, status: :created, location: @basis }
      else
        format.html { render action: "new" }
        format.json { render json: @basis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bases/1
  # PUT /bases/1.json
  def update
    @basis = Base.find(params[:id])

    respond_to do |format|
      if @basis.update_attributes(params[:basis])
        format.html { redirect_to @basis, notice: 'Base was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @basis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bases/1
  # DELETE /bases/1.json
  def destroy
    @basis = Base.find(params[:id])
    @basis.destroy

    respond_to do |format|
      format.html { redirect_to bases_url }
      format.json { head :no_content }
    end
  end
end
