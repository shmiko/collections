class AddresController < ApplicationController
  # GET /addres
  # GET /addres.json
  def index
    @addres = Addre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @addres }
    end
  end

  # GET /addres/1
  # GET /addres/1.json
  def show
    @addre = Addre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @addre }
    end
  end

  # GET /addres/new
  # GET /addres/new.json
  def new
    @addre = Addre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @addre }
    end
  end

  # GET /addres/1/edit
  def edit
    @addre = Addre.find(params[:id])
  end

  # POST /addres
  # POST /addres.json
  def create
    @addre = Addre.new(params[:addre])

    respond_to do |format|
      if @addre.save
        format.html { redirect_to @addre, notice: 'Addre was successfully created.' }
        format.json { render json: @addre, status: :created, location: @addre }
      else
        format.html { render action: "new" }
        format.json { render json: @addre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /addres/1
  # PUT /addres/1.json
  def update
    @addre = Addre.find(params[:id])

    respond_to do |format|
      if @addre.update_attributes(params[:addre])
        format.html { redirect_to @addre, notice: 'Addre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @addre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addres/1
  # DELETE /addres/1.json
  def destroy
    @addre = Addre.find(params[:id])
    @addre.destroy

    respond_to do |format|
      format.html { redirect_to addres_url }
      format.json { head :no_content }
    end
  end
end
