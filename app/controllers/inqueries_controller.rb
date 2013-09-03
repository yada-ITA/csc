class InqueriesController < ApplicationController

  # for devise
  before_filter :authenticate_user!

  # GET /inqueries
  # GET /inqueries.json
  def index
    @inqueries = Inquery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inqueries }
    end
  end

  # GET /inqueries/1
  # GET /inqueries/1.json
  def show
    @inquery = Inquery.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inquery }
    end
  end

  # GET /inqueries/new
  # GET /inqueries/new.json
  def new
    @inquery = Inquery.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inquery }
    end
  end

  # GET /inqueries/1/edit
  def edit
    @inquery = Inquery.find(params[:id])
  end

  # POST /inqueries
  # POST /inqueries.json
  def create
    @inquery = Inquery.new(params[:inquery])

    respond_to do |format|
      if @inquery.save
        format.html { redirect_to @inquery, notice: 'Inquery was successfully created.' }
        format.json { render json: @inquery, status: :created, location: @inquery }
      else
        format.html { render action: "new" }
        format.json { render json: @inquery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inqueries/1
  # PUT /inqueries/1.json
  def update
    @inquery = Inquery.find(params[:id])

    respond_to do |format|
      if @inquery.update_attributes(params[:inquery])
        format.html { redirect_to @inquery, notice: 'Inquery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @inquery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inqueries/1
  # DELETE /inqueries/1.json
  def destroy
    @inquery = Inquery.find(params[:id])
    @inquery.destroy

    respond_to do |format|
      format.html { redirect_to inqueries_url }
      format.json { head :no_content }
    end
  end
end
