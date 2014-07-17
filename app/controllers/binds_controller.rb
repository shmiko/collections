class BindsController < ApplicationController
  # GET /binds
  # GET /binds.json
  def index
    @binds = Bind.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @binds }
    end
  end

  # GET /binds/1
  # GET /binds/1.json
  def show
    @bind = Bind.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bind }
    end
  end

  # GET /binds/new
  # GET /binds/new.json
  def new
    @bind = Bind.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bind }
    end
  end

  # GET /binds/1/edit
  def edit
    @bind = Bind.find(params[:id])
  end

  # POST /binds
  # POST /binds.json
  def create
    @bind = Bind.new(params[:bind])

    respond_to do |format|
      if @bind.save
        format.html { redirect_to @bind, notice: 'Bind was successfully created.' }
        format.json { render json: @bind, status: :created, location: @bind }
      else
        format.html { render action: "new" }
        format.json { render json: @bind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /binds/1
  # PUT /binds/1.json
  def update
    @bind = Bind.find(params[:id])

    respond_to do |format|
      if @bind.update_attributes(params[:bind])
        format.html { redirect_to @bind, notice: 'Bind was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /binds/1
  # DELETE /binds/1.json
  def destroy
    @bind = Bind.find(params[:id])
    @bind.destroy

    respond_to do |format|
      format.html { redirect_to binds_url }
      format.json { head :no_content }
    end
  end
end
