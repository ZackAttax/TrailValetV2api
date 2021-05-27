class Api::V1::TrailsController < ApplicationController
    before_action :set_trail, only: [:show, :update, :destroy]

  # GET /trails
  def index
    trails = Trail.all

    render json: trails, except: [:created_at, :updated_at], include: :valets
  end

  # GET /trails/1
  def show
    render json: @trail
  end

  # POST /trails
  def create
    
    @trail = Trail.new(trail_params)

    if @trail.save
      render json: {
        status: "found",
        trail: @trail, except: [:created_at, :updated_at]
      }, status: :created, location: api_v1_trail_path(@trail)
    else
      render json: {
        Status: "lost...",
        error: @trail.errors.full_messages.join(", ")
       }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trails/1
  def update
    if @trail.update(trail_params)
      render json: @trail
    else
      render json: @trail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trails/1
  def destroy
    @trail.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trail
      @trail = Trail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trail_params
      params.require(:trail).permit(:name)
    end

end

