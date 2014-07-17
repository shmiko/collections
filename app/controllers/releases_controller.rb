class ReleasesController < ApplicationController
  # GET /releases
  # GET /releases.json
  before_action :set_release, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  def index
    @releases = current_user.Release.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @releases }
    end
  end

  # GET /releases/1
  # GET /releases/1.json
  def show
    @release = current_user.Release.find(params[:id])
	
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @release }
    end
  end

  # GET /releases/new
  # GET /releases/new.json
  def new
    @release = current_user.Release.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @release }
    end
  end

  # GET /releases/1/edit
  def edit
    @release = current_user.Release.find(params[:id])
  end

  # POST /releases
  # POST /releases.json
  def create
    @release = current_user.Release.new(params[:release])
	respond_to do |format|
      if @release.save
        format.html { redirect_to @release, notice: 'Release was successfully created.' }
        format.json { render json: @release, status: :created, location: @release }
      else
        format.html { render action: "new" }
        format.json { render json: @release.errors, status: :unprocessable_entity }
      end
    end
  end
  
  

  # PUT /releases/1
  # PUT /releases/1.json
  def update
    @release = current_user.Release.find(params[:id])

    respond_to do |format|
      if @release.update_attributes(params[:release])
        format.html { redirect_to @release, notice: 'Release was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @release.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /releases/1
  # DELETE /releases/1.json
  def destroy
    @release = current_user.Release.find(params[:id])
    @release.destroy

    respond_to do |format|
      format.html { redirect_to releases_url }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_release
      unless @release = current_user.release.where(id: params[:id]).first
        flash[:alert] = 'Release not found.'
        redirect_to root_url
      end
    end
  
end
