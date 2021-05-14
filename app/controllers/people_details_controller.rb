class PeopleDetailsController < ApplicationController
  before_action :set_people_detail, only: %i[ show edit update destroy ]

  # GET /people_details or /people_details.json
  def index
    @people_details = PeopleDetail.all
  end

  # GET /people_details/1 or /people_details/1.json
  def show
  end

  # GET /people_details/new
  def new
    @people_detail = PeopleDetail.new
  end

  # GET /people_details/1/edit
  def edit
  end

  # POST /people_details or /people_details.json
  def create
    @people_detail = PeopleDetail.new(people_detail_params)

    respond_to do |format|
      if @people_detail.save
        format.html { redirect_to @people_detail, notice: "Person was successfully added." }
        format.json { render :show, status: :created, location: @people_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @people_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people_details/1 or /people_details/1.json
  def update
    respond_to do |format|
      if @people_detail.update(people_detail_params)
        format.html { redirect_to @people_detail, notice: "Persons detail was successfully updated." }
        format.json { render :show, status: :ok, location: @people_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @people_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people_details/1 or /people_details/1.json
  def destroy
    @people_detail.destroy
    respond_to do |format|
      format.html { redirect_to people_details_url, notice: "Persons details was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_people_detail
      @people_detail = PeopleDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def people_detail_params
      params.require(:people_detail).permit(:first_name, :last_name, :phone_number, :email)
    end
end
