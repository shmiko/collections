class InformationTagsController < ApplicationController
  # GET /information_tags
  # GET /information_tags.json
  def index
    @information_tags = InformationTag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @information_tags }
    end
  end

  # GET /information_tags/1
  # GET /information_tags/1.json
  def show
    @information_tag = InformationTag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @information_tag }
    end
  end

  # GET /information_tags/new
  # GET /information_tags/new.json
  def new
    @information_tag = InformationTag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @information_tag }
    end
  end

  # GET /information_tags/1/edit
  def edit
    @information_tag = InformationTag.find(params[:id])
  end

  # POST /information_tags
  # POST /information_tags.json
  def create
    @information_tag = InformationTag.new(params[:information_tag])

    respond_to do |format|
      if @information_tag.save
        format.html { redirect_to @information_tag, notice: 'Information tag was successfully created.' }
        format.json { render json: @information_tag, status: :created, location: @information_tag }
      else
        format.html { render action: "new" }
        format.json { render json: @information_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /information_tags/1
  # PUT /information_tags/1.json
  def update
    @information_tag = InformationTag.find(params[:id])

    respond_to do |format|
      if @information_tag.update_attributes(params[:information_tag])
        format.html { redirect_to @information_tag, notice: 'Information tag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @information_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /information_tags/1
  # DELETE /information_tags/1.json
  def destroy
    @information_tag = InformationTag.find(params[:id])
    @information_tag.destroy

    respond_to do |format|
      format.html { redirect_to information_tags_url }
      format.json { head :no_content }
    end
  end
end
