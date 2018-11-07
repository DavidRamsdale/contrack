class RecruitersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_recruiter, only: [:show, :edit, :update, :destroy]
  # before_action :is_recruiter, only: [:index, :show, :edit, :new]
  before_action :has_paid, only: [:index]
  
  before_action :validate_recruiter, only: [:show, :edit, :update, :destroy]
  
  # GET /recruiters
  # GET /recruiters.json
  def index
    @recruiters = Recruiter.all
  end

  def payment
  end

  # GET /recruiters/1
  # GET /recruiters/1.json
  def show
  end

  # GET /recruiters/new
  def new
      if current_user.recruiter == nil
        @recruiter = Recruiter.new
      else
        redirect_to "/"
      end
  end
  
  # GET /recruiters/1/edit
  def edit
  end

  # POST /recruiters
  # POST /recruiters.json
  def create
    @recruiter = Recruiter.new(recruiter_params)
    @recruiter.user_id = current_user.id

    respond_to do |format|
      if @recruiter.save
        format.html { redirect_to recruiterpayment_path, notice: 'Recruiter was successfully created.' }
        format.json { render :show, status: :created, location: @recruiter }
      else
        format.html { render :new }
        format.json { render json: @recruiter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recruiters/1
  # PATCH/PUT /recruiters/1.json
  def update
    respond_to do |format|
      if @recruiter.update(recruiter_params)
        format.html { redirect_to @recruiter, notice: 'Recruiter was successfully updated.' }
        format.json { render :show, status: :ok, location: @recruiter }
      else
        format.html { render :edit }
        format.json { render json: @recruiter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recruiters/1
  # DELETE /recruiters/1.json
  def destroy
    @recruiter.destroy
    respond_to do |format|
      format.html { redirect_to recruiters_url, notice: 'Recruiter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recruiter
      # @recruiter = Recruiter.find(params[:id])
      @recruiter = current_user.recruiter
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recruiter_params
      params.require(:recruiter).permit(:user_id, :company, :search)
    end
    def validate_recruiter
      if current_user.is_contractor
        redirect_to "/"
      end
    end
end
