class ReleaseLanguagesController < ApplicationController
  # GET /release_languages
  # GET /release_languages.json
  def index
    @release_languages = ReleaseLanguage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @release_languages }
    end
  end

  # GET /release_languages/1
  # GET /release_languages/1.json
  def show
    @release_language = ReleaseLanguage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @release_language }
    end
  end

  # GET /release_languages/new
  # GET /release_languages/new.json
  def new
    @release_language = ReleaseLanguage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @release_language }
    end
  end

  # GET /release_languages/1/edit
  def edit
    @release_language = ReleaseLanguage.find(params[:id])
  end

  # POST /release_languages
  # POST /release_languages.json
  def create
    @release_language = ReleaseLanguage.new(params[:release_language])

    respond_to do |format|
      if @release_language.save
        format.html { redirect_to @release_language, notice: 'Release language was successfully created.' }
        format.json { render json: @release_language, status: :created, location: @release_language }
      else
        format.html { render action: "new" }
        format.json { render json: @release_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /release_languages/1
  # PUT /release_languages/1.json
  def update
    @release_language = ReleaseLanguage.find(params[:id])

    respond_to do |format|
      if @release_language.update_attributes(params[:release_language])
        format.html { redirect_to @release_language, notice: 'Release language was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @release_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /release_languages/1
  # DELETE /release_languages/1.json
  def destroy
    @release_language = ReleaseLanguage.find(params[:id])
    @release_language.destroy

    respond_to do |format|
      format.html { redirect_to release_languages_url }
      format.json { head :no_content }
    end
  end
end
