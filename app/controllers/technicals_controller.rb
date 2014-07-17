class TechnicalsController < ApplicationController
  # GET /technicals
  # GET /technicals.json
  def index
    @technicals = Technical.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @technicals }
    end
  end

  # GET /technicals/1
  # GET /technicals/1.json
  def show
    @technical = Technical.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @technical }
    end
  end

  # GET /technicals/new
  # GET /technicals/new.json
  def new
    @technical = Technical.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @technical }
    end
  end

  # GET /technicals/1/edit
  def edit
    @technical = Technical.find(params[:id])
  end

  # POST /technicals
  # POST /technicals.json
  def create
    @technical = Technical.new(params[:technical])

    respond_to do |format|
      if @technical.save
        format.html { redirect_to @technical, notice: 'Technical was successfully created.' }
        format.json { render json: @technical, status: :created, location: @technical }
      else
        format.html { render action: "new" }
        format.json { render json: @technical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /technicals/1
  # PUT /technicals/1.json
  def update
    @technical = Technical.find(params[:id])

    respond_to do |format|
      if @technical.update_attributes(params[:technical])
        format.html { redirect_to @technical, notice: 'Technical was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @technical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /technicals/1
  # DELETE /technicals/1.json
  def destroy
    @technical = Technical.find(params[:id])
    @technical.destroy

    respond_to do |format|
      format.html { redirect_to technicals_url }
      format.json { head :no_content }
    end
  end
end
