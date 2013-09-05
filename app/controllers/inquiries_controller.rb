class InquiriesController < ApplicationController
 before_filter:authenticate_user!
  before_action :set_inquiry, only: [:show, :edit, :update, :destroy]

  # GET /inquiries
  # GET /inquiries.json
  def index
    @inquiries = Inquiry.all
  end

  # GET /inquiries/1
  # GET /inquiries/1.json
  def show
  end

  # GET /inquiries/new
  def new
    puts '-----------------------'
    @inquiry = Inquiry.new
    @ctantoms = Ctantom.all
    puts '-----------------------' + @inquiry.class.name
  end

  # GET /inquiries/1/edit
  def edit
    @ctantoms = Ctantom.all
  end

  # POST /inquiries
  # POST /inquiries.json
  def create
    @inquiry = Inquiry.new(inquiry_params)
    @ctantoms = Ctantom.all

    respond_to do |format|
      if @inquiry.save
        format.html { redirect_to @inquiry, notice: 'Inquiry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @inquiry }
      else
        format.html { render action: 'new' }
        format.json { render json: @inquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inquiries/1
  # PATCH/PUT /inquiries/1.json
  def update
    @ctantoms = Ctantom.all
    respond_to do |format|
      if @inquiry.update(inquiry_params)
        format.html { redirect_to @inquiry, notice: 'Inquiry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @inquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inquiries/1
  # DELETE /inquiries/1.json
  def destroy
    @inquiry.destroy
    respond_to do |format|
      format.html { redirect_to inquiries_url }
      format.json { head :no_content }
    end
  end

  def search
    result = Inquiry.all()
    if !params[:id].blank?
      result = result.where('id = ?', params[:id])
    end
    
    if !params[:ttanto].blank?
      result = result.where('ttanto = ?', params[:ttanto])
    end
    
    @inquiries = result
    render "index"
   end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inquiry
      @inquiry = Inquiry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inquiry_params
      params.require(:inquiry).permit(:receptiondate, :contact, :client, :memo, :deadline, :title, :utanto, :ctanto, :jyokyo, :youken, :recontact, :kinkyu, :taiou, :gotaiou, :tmemo, :ctantom_id)
    end
    
end
