class LappointmentsController < ApplicationController
  before_action :set_lappointment, only: [:show, :edit, :update, :destroy]

  # GET /lappointments
  # GET /lappointments.json
  def index
    #Lappointment.remove_lappointment
    @alappointments = Lappointment.all
    @lappointments = Lappointment.where(:user_id => current_user)
  end

  # GET /lappointments/1
  # GET /lappointments/1.json
  def show
  end

  # GET /lappointments/new
  def new
    @lappointment = Lappointment.new
  end

  # GET /lappointments/1/edit
  def edit
  end

  # POST /lappointments
  # POST /lappointments.json
  def create
    @lappointment = Lappointment.new(lappointment_params)
    @lappointment.time_slot = Lappointment.allot_lappointment 
    @lappointment.user = current_user
    @lappointment.license = @lappointment.user.license

    respond_to do |format|
      if @lappointment.save
        format.html { redirect_to @lappointment, notice: 'Lappointment was successfully created.' }
        format.json { render :show, status: :created, location: @lappointment }
      else
        format.html { render :new }
        format.json { render json: @lappointment.errors, status: :unprocessable_entity }
      end
    end
    

  end

  # PATCH/PUT /lappointments/1
  # PATCH/PUT /lappointments/1.json
  def update
    respond_to do |format|
      if @lappointment.update(lappointment_params)
        format.html { redirect_to @lappointment, notice: 'Lappointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @lappointment }
      else
        format.html { render :edit }
        format.json { render json: @lappointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lappointments/1
  # DELETE /lappointments/1.json
  def destroy
    @lappointment.destroy
    respond_to do |format|
      format.html { redirect_to lappointments_url, notice: 'Lappointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lappointment
      @lappointment = Lappointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lappointment_params
      params.fetch(:lappointment, {})
    end
end
