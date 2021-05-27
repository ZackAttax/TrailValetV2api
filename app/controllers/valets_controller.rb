class ValetsController < ApplicationController
  before_action :set_valet, only: [:show, :update, :destroy]

  # GET /valets
  def index
    @valets = Valet.all

    render json: @valets
  end

  # GET /valets/1
  def show
    render json: @valet
  end

  # POST /valets
  def create
    @valet = Valet.new(valet_params)

    if @valet.save
      render json: {
        status: "found",
        valet: @valet
         }, status: :created
    else
      render json: @valet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /valets/1
  # def update
  #   if @valet.update(valet_params)
  #     render json: {
  #       status: 200,
  #       valet: @valet
  #   }
  #   else
  #     render json: {
  #       status: 400,
  #       @valet.errors
  #     }, status: :unprocessable_entity
  #   end
  # end

  # DELETE /valets/1
  def destroy
    @valet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_valet
      @valet = Valet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def valet_params
      params.require(:valet).permit(:location, :issue, :fixed, :trail_id)
    end
end
