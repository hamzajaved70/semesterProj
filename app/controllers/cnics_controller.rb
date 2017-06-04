class CnicsController < ApplicationController
  before_action :set_cnic, only: [:show, :edit, :update, :destroy, :approve, :disapprove]
  before_action :authenticate_user!
  load_and_authorize_resource 
  # GET /cnics
  # GET /cnics.json
  def index
    @cnics = Cnic.where(:user_id => current_user)
    @acnics = Cnic.all
  end

  # GET /cnics/1
  # GET /cnics/1.json
  def show
  end

  # GET /cnics/new
  def new
    @cnic = Cnic.new
    @cnic.user = current_user
  end

  # GET /cnics/1/edit
  def edit
  end

  def approve
    @cnic.update(approved: true)
    redirect_to cnic_path
  end

  def disapprove
    @cnic.update(approved: false)
    redirect_to cnic_path
  end


  # POST /cnics
  # POST /cnics.json
  def create
    @cnic = Cnic.new(cnic_params)
    @cnic.user = current_user
    @cnic.save
    redirect_to new_appointment_path and return

    respond_to do |format|
      if @cnic.save
        format.html { redirect_to @cnic, notice: 'Cnic was successfully created.' }
        format.json { render :show, status: :created, location: @cnic }
      else
        format.html { render :new }
        format.json { render json: @cnic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cnics/1
  # PATCH/PUT /cnics/1.json
  def update
    respond_to do |format|
      if @cnic.update(cnic_params)
        format.html { redirect_to @cnic, notice: 'Cnic was successfully updated.' }
        format.json { render :show, status: :ok, location: @cnic }
      else
        format.html { render :edit }
        format.json { render json: @cnic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cnics/1
  # DELETE /cnics/1.json
  def destroy
    @cnic.destroy
    respond_to do |format|
      format.html { redirect_to cnics_url, notice: 'Cnic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cnic
      @cnic = Cnic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cnic_params
      params.require(:cnic).permit(:full_name, :father_name, :gender, :country_of_stay, :b_form, :current_address, :permanent_address, :dob, :image, :sign, :expiry_date, :issue_date)
    end


end
