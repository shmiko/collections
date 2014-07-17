class RelatedReleasesController < ApplicationController
  # GET /related_releases
  # GET /related_releases.json
  def index
    @related_releases = RelatedRelease.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @related_releases }
    end
  end

  # GET /related_releases/1
  # GET /related_releases/1.json
  def show
    @related_release = RelatedRelease.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @related_release }
    end
  end

  # GET /related_releases/new
  # GET /related_releases/new.json
  def new
    @related_release = RelatedRelease.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @related_release }
    end
  end

  # GET /related_releases/1/edit
  def edit
    @related_release = RelatedRelease.find(params[:id])
  end

  # POST /related_releases
  # POST /related_releases.json
  def create
    @related_release = RelatedRelease.new(params[:related_release])

    respond_to do |format|
      if @related_release.save
        format.html { redirect_to @related_release, notice: 'Related release was successfully created.' }
        format.json { render json: @related_release, status: :created, location: @related_release }
      else
        format.html { render action: "new" }
        format.json { render json: @related_release.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /related_releases/1
  # PUT /related_releases/1.json
  def update
    @related_release = RelatedRelease.find(params[:id])

    respond_to do |format|
      if @related_release.update_attributes(params[:related_release])
        format.html { redirect_to @related_release, notice: 'Related release was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @related_release.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /related_releases/1
  # DELETE /related_releases/1.json
  def destroy
    @related_release = RelatedRelease.find(params[:id])
    @related_release.destroy

    respond_to do |format|
      format.html { redirect_to related_releases_url }
      format.json { head :no_content }
    end
  end
end
