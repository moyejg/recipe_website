class DirectionsController < ApplicationController
  before_action :set_direction, only: [:show, :edit, :update, :destroy]
  before_action :set_task, only: [:edit, :update, :destroy]

  def new
    @direction = Direction.new
  end

  # GET /directions/1/edit
  def edit
  end

  # POST /directions
  # POST /directions.json
  def create
    @direction = Direction.create(direction_params)
  end

  # PATCH/PUT /directions/1
  # PATCH/PUT /directions/1.json
  def update
  end

  # DELETE /directions/1
  # DELETE /directions/1.json
  def destroy
    @direction.destroy
  end

  private

    def all_directions
      @directions = Direction.all
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_direction
      @direction = Direction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def direction_params
      params.require(:direction).permit(:step_entry, :recipe_id)
    end
end
