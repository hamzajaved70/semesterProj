class LicensesController < ApplicationController
  before_action :set_license, only: [:show, :edit, :update, :destroy, :approve, :disapprove]
  before_action :authenticate_user!
  load_and_authorize_resource 
  # GET /licenses
  # GET /licenses.json
  def index
    @alicenses = License.all
    @licenses = License.where(:user_id => current_user)
  end

  # GET /licenses/1
  # GET /licenses/1.json
  def show
  end

  # GET /licenses/new
  def new
    @license = License.new
    @license.user = current_user
  end

  # GET /licenses/1/edit
  def edit
  end

  def approve
    @license.update(approved: true)
    redirect_to license_path
  end

  def disapprove
    @license.update(approved: false)
    redirect_to license_path
  end

  # POST /licenses
  # POST /licenses.json
  def create
    @license = License.new(license_params)
    @license.user = current_user
    @license.save
    redirect_to new_lappointment_path and return

    respond_to do |format|
      if @license.save
        format.html { redirect_to @license, notice: 'License was successfully created.' }
        format.json { render :show, status: :created, location: @license }
      else
        format.html { render :new }
        format.json { render json: @license.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /licenses/1
  # PATCH/PUT /licenses/1.json
  def update
    respond_to do |format|
      if @license.update(license_params)
        format.html { redirect_to @license, notice: 'License was successfully updated.' }
        format.json { render :show, status: :ok, location: @license }
      else
        format.html { render :edit }
        format.json { render json: @license.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /licenses/1
  # DELETE /licenses/1.json
  def destroy
    @license.destroy
    respond_to do |format|
      format.html { redirect_to licenses_url, notice: 'License was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_license
      @license = License.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def license_params
      params.require(:license).permit(:full_name, :father_name, :gender, :cnic, :blood, :mobile, :permanent_address, :dob, :image, :sign, :expiry_date, :issue_date)
    end
end
