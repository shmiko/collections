class ReleaseLoansController < ApplicationController
  # GET /release_loans
  # GET /release_loans.json
  def index
    @release_loans = ReleaseLoan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @release_loans }
    end
  end

  # GET /release_loans/1
  # GET /release_loans/1.json
  def show
    @release_loan = ReleaseLoan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @release_loan }
    end
  end

  # GET /release_loans/new
  # GET /release_loans/new.json
  def new
    @release_loan = ReleaseLoan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @release_loan }
    end
  end

  # GET /release_loans/1/edit
  def edit
    @release_loan = ReleaseLoan.find(params[:id])
  end

  # POST /release_loans
  # POST /release_loans.json
  def create
    @release_loan = ReleaseLoan.new(params[:release_loan])

    respond_to do |format|
      if @release_loan.save
        format.html { redirect_to @release_loan, notice: 'Release loan was successfully created.' }
        format.json { render json: @release_loan, status: :created, location: @release_loan }
      else
        format.html { render action: "new" }
        format.json { render json: @release_loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /release_loans/1
  # PUT /release_loans/1.json
  def update
    @release_loan = ReleaseLoan.find(params[:id])

    respond_to do |format|
      if @release_loan.update_attributes(params[:release_loan])
        format.html { redirect_to @release_loan, notice: 'Release loan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @release_loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /release_loans/1
  # DELETE /release_loans/1.json
  def destroy
    @release_loan = ReleaseLoan.find(params[:id])
    @release_loan.destroy

    respond_to do |format|
      format.html { redirect_to release_loans_url }
      format.json { head :no_content }
    end
  end
end
