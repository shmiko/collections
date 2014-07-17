class PersonsReleasesController < ApplicationController
  # GET /persons_releases
  # GET /persons_releases.json
  def index
    @persons_releases = PersonsRelease.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @persons_releases }
    end
  end

  # GET /persons_releases/1
  # GET /persons_releases/1.json
  def show
    @persons_release = PersonsRelease.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @persons_release }
    end
  end

  # GET /persons_releases/new
  # GET /persons_releases/new.json
  def new
    @persons_release = PersonsRelease.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @persons_release }
    end
  end

  # GET /persons_releases/1/edit
  def edit
    @persons_release = PersonsRelease.find(params[:id])
  end

  # POST /persons_releases
  # POST /persons_releases.json
  def create
    @persons_release = PersonsRelease.new(params[:persons_release])

    respond_to do |format|
      if @persons_release.save
        format.html { redirect_to @persons_release, notice: 'Persons release was successfully created.' }
        format.json { render json: @persons_release, status: :created, location: @persons_release }
      else
        format.html { render action: "new" }
        format.json { render json: @persons_release.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /persons_releases/1
  # PUT /persons_releases/1.json
  def update
    @persons_release = PersonsRelease.find(params[:id])

    respond_to do |format|
      if @persons_release.update_attributes(params[:persons_release])
        format.html { redirect_to @persons_release, notice: 'Persons release was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @persons_release.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /persons_releases/1
  # DELETE /persons_releases/1.json
  def destroy
    @persons_release = PersonsRelease.find(params[:id])
    @persons_release.destroy

    respond_to do |format|
      format.html { redirect_to persons_releases_url }
      format.json { head :no_content }
    end
  end
end
