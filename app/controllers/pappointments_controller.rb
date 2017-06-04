class PappointmentsController < ApplicationController
  before_action :set_pappointment, only: [:show, :edit, :update, :destroy]

  # GET /pappointments
  # GET /pappointments.json
  def index
    #Pappointment.remove_pappointment
    @apappointments = Pappointment.all
    @pappointments = Pappointment.where(:user_id => current_user)
  end

  # GET /pappointments/1
  # GET /pappointments/1.json
  def show
  end

  # GET /pappointments/new
  def new
    @pappointment = Pappointment.new
  end

  # GET /pappointments/1/edit
  def edit
  end

  # POST /pappointments
  # POST /pappointments.json
  def create
    @pappointment = Pappointment.new(pappointment_params)
    @pappointment.time_slot = Pappointment.allot_pappointment 
    @pappointment.user = current_user
    @pappointment.passport = @pappointment.user.passport

    respond_to do |format|
      if @pappointment.save
        format.html { redirect_to @pappointment, notice: 'Pappointment was successfully created.' }
        format.json { render :show, status: :created, location: @pappointment }
      else
        format.html { render :new }
        format.json { render json: @pappointment.errors, status: :unprocessable_entity }
      end
    end
    

  end

  # PATCH/PUT /pappointments/1
  # PATCH/PUT /pappointments/1.json
  def update
    respond_to do |format|
      if @pappointment.update(pappointment_params)
        format.html { redirect_to @pappointment, notice: 'Pappointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @pappointment }
      else
        format.html { render :edit }
        format.json { render json: @pappointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pappointments/1
  # DELETE /pappointments/1.json
  def destroy
    @pappointment.destroy
    respond_to do |format|
      format.html { redirect_to pappointments_url, notice: 'Pappointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pappointment
      @pappointment = Pappointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pappointment_params
      params.fetch(:pappointment, {})
    end
end
