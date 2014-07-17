class PersonsAddresController < ApplicationController
  # GET /persons_addres
  # GET /persons_addres.json
  def index
    @persons_addres = PersonsAddre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @persons_addres }
    end
  end

  # GET /persons_addres/1
  # GET /persons_addres/1.json
  def show
    @persons_addre = PersonsAddre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @persons_addre }
    end
  end

  # GET /persons_addres/new
  # GET /persons_addres/new.json
  def new
    @persons_addre = PersonsAddre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @persons_addre }
    end
  end

  # GET /persons_addres/1/edit
  def edit
    @persons_addre = PersonsAddre.find(params[:id])
  end

  # POST /persons_addres
  # POST /persons_addres.json
  def create
    @persons_addre = PersonsAddre.new(params[:persons_addre])

    respond_to do |format|
      if @persons_addre.save
        format.html { redirect_to @persons_addre, notice: 'Persons addre was successfully created.' }
        format.json { render json: @persons_addre, status: :created, location: @persons_addre }
      else
        format.html { render action: "new" }
        format.json { render json: @persons_addre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /persons_addres/1
  # PUT /persons_addres/1.json
  def update
    @persons_addre = PersonsAddre.find(params[:id])

    respond_to do |format|
      if @persons_addre.update_attributes(params[:persons_addre])
        format.html { redirect_to @persons_addre, notice: 'Persons addre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @persons_addre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /persons_addres/1
  # DELETE /persons_addres/1.json
  def destroy
    @persons_addre = PersonsAddre.find(params[:id])
    @persons_addre.destroy

    respond_to do |format|
      format.html { redirect_to persons_addres_url }
      format.json { head :no_content }
    end
  end
end
