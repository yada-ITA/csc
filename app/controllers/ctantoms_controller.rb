class CtantomsController < ApplicationController
  before_action :set_ctantom, only: [:show, :edit, :update, :destroy]

  # GET /ctantoms
  # GET /ctantoms.json
  def index
    @ctantoms = Ctantom.all
  end

  # GET /ctantoms/1
  # GET /ctantoms/1.json
  def show
  end

  # GET /ctantoms/new
  def new
    @ctantom = Ctantom.new
  end

  # GET /ctantoms/1/edit
  def edit
  end

  # POST /ctantoms
  # POST /ctantoms.json
  def create
    @ctantom = Ctantom.new(ctantom_params)

    respond_to do |format|
      if @ctantom.save
        format.html { redirect_to @ctantom, notice: 'Ctantom was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ctantom }
      else
        format.html { render action: 'new' }
        format.json { render json: @ctantom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ctantoms/1
  # PATCH/PUT /ctantoms/1.json
  def update
    respond_to do |format|
      if @ctantom.update(ctantom_params)
        format.html { redirect_to @ctantom, notice: 'Ctantom was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ctantom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ctantoms/1
  # DELETE /ctantoms/1.json
  def destroy
    @ctantom.destroy
    respond_to do |format|
      format.html { redirect_to ctantoms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ctantom
      @ctantom = Ctantom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ctantom_params
      params.require(:ctantom).permit(:ctuid, :ctname, :ctmailofc, :ctmailmp, :ctjname1, :ctjuid1, :ctjmailofc1, :ctjmailmp1, :ctjname2, :ctjuid2, :ctjmailofc2, :ctjmailmp2, :ctjname3, :ctjuid3, :ctjmailofc3, :ctjmailmp3)
    end
end
