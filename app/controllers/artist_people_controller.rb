class ArtistPeopleController < ApplicationController
  # GET /artist_people
  # GET /artist_people.json
  def index
    @artist_people = ArtistPerson.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @artist_people }
    end
  end

  # GET /artist_people/1
  # GET /artist_people/1.json
  def show
    @artist_person = ArtistPerson.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @artist_person }
    end
  end

  # GET /artist_people/new
  # GET /artist_people/new.json
  def new
    @artist_person = ArtistPerson.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @artist_person }
    end
  end

  # GET /artist_people/1/edit
  def edit
    @artist_person = ArtistPerson.find(params[:id])
  end

  # POST /artist_people
  # POST /artist_people.json
  def create
    @artist_person = ArtistPerson.new(params[:artist_person])

    respond_to do |format|
      if @artist_person.save
        format.html { redirect_to @artist_person, notice: 'Artist person was successfully created.' }
        format.json { render json: @artist_person, status: :created, location: @artist_person }
      else
        format.html { render action: "new" }
        format.json { render json: @artist_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /artist_people/1
  # PUT /artist_people/1.json
  def update
    @artist_person = ArtistPerson.find(params[:id])

    respond_to do |format|
      if @artist_person.update_attributes(params[:artist_person])
        format.html { redirect_to @artist_person, notice: 'Artist person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @artist_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artist_people/1
  # DELETE /artist_people/1.json
  def destroy
    @artist_person = ArtistPerson.find(params[:id])
    @artist_person.destroy

    respond_to do |format|
      format.html { redirect_to artist_people_url }
      format.json { head :no_content }
    end
  end
end
