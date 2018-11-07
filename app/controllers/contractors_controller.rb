class ContractorsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_contractor, only: [:show, :edit, :update, :destroy]
  before_action :validate_contractor, only: [:show, :edit, :update, :destroy]

  # GET /contractors
  # GET /contractors.json
  def index
    if current_user.is_contractor == false
      redirect_to "/"
    end
  end

  # GET /contractors/1
  # GET /contractors/1.json
  def show
    redirect_to language_users_new_path
  end

  # GET /contractors/new
  def new
    if current_user.contractor == nil
      @contractor = Contractor.new
      # redirect_to language_users_new_path
    else
      redirect_to "/"
    end
  end

  # GET /contractors/1/edit
  def edit
  end

  # POST /contractors
  # POST /contractors.json
  def create
    @contractor = Contractor.new(contractor_params)
    @contractor.user_id = current_user.id
    
    respond_to do |format|
      if @contractor.save
        format.html { redirect_to @contractor, notice: 'Contractor was successfully created.' }
        format.json { render :show, status: :created, location: @contractor }
      else
        format.html { render :new }
        format.json { render json: @contractor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contractors/1
  # PATCH/PUT /contractors/1.json
  def update
    respond_to do |format|
      if @contractor.update(contractor_params)
        format.html { redirect_to @contractor, notice: 'Contractor was successfully updated.' }
        format.json { render :show, status: :ok, location: @contractor }
      else
        format.html { render :edit }
        format.json { render json: @contractor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contractors/1
  # DELETE /contractors/1.json
  def destroy
    @contractor.destroy
    respond_to do |format|
      format.html { redirect_to contractors_url, notice: 'Contractor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contractor
      # @contractor = Contractor.find(params[:id])
      @contractor = current_user.contractor
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contractor_params
      params.require(:contractor).permit(:user_id, :lvl_of_exp, :end_date, :current_role, :current_company, :engineer_type, :city, :will_move, :pay_range, :pref_contract, :available_now, :photo, :cv, :linkedin, :github)
    end

    def validate_contractor
      if current_user.is_contractor == false
        redirect_to "/"
      end
    end
end
