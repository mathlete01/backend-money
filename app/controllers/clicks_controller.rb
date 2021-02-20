class ClicksController < ApplicationController
  # belongs_to :user
  before_action :set_click, only: [:show, :update, :destroy]

  # GET /clicks
  def index
    @clicks = Click.all

    render json: @clicks
  end

  # GET /clicks/1
  def show
    render json: @click
  end

  # POST /clicks
  def create
    @click = Click.new(click_params)

    if @click.save
      render json: @click, status: :created, location: @click
    else
      render json: @click.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clicks/1
  def update
    if @click.update(click_params)
      render json: @click
    else
      render json: @click.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clicks/1
  def destroy
    @click.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_click
      @click = Click.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def click_params
      params.require(:click).permit(:user_id, :steps_id, :rows_id)
    end
end
