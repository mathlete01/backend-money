class RungsController < ApplicationController
  before_action :set_rung, only: [:show, :update, :destroy]
  # GET /rungs
  def index
    @rungs = Rung.all
    
    render json: @rungs
  end
  
  # GET /rungs/1
  def show
    render json: @rung
  end
  
  # POST /rungs
  def create
    # byebug
    @rung = Rung.new(rung_params)

    if @rung.save
      render json: @rung, status: :created, location: @rung
    else
      render json: @rung.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rungs/1
  def update
    if @rung.update(rung_params)
      render json: @rung
    else
      render json: @rung.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rungs/1
  def destroy
    @rung.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rung
      @rung = Rung.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rung_params
      # params.fetch(:rung, {})par
      params.require(:rung).permit(:rung_1, :rung_2, :rung_3, :rung_4, :rung_5, :rung_6, :rung_7, :user_id )
    end
end
