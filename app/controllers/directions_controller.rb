class DirectionsController < ApplicationController
  before_action :all_directions, only: [:create, :index, :update]
  before_action :set_direction, only: [:edit, :update, :destroy] 


  def show
    # @recipe_id = Recipe.find_by([:id])
    # @directions = @recipe.directions
  end
    

  def new
    @direction = Direction.new 
  end 

  # GET /directions/1/edit
  def edit
    # @direction = Direction.find(params[:id]) 
    # @recipe = Recipe.find(params[:direction][:recipe_id])
    # @directions = @recipe.directions
  end

  # POST /directions
  # POST /directions.json
  def create
    @direction = Direction.create(direction_params)
    @recipe = Recipe.find(params[:direction][:recipe_id])
    @directions = @recipe.directions     

    # respond_to do |format|
    #   if @direction.save
    #     format.js
    #     format.html { redirect_to recipe_path(id: @direction.recipe_id), 
    #     notice: 'Step was successfully created.' }
    #     format.json { render :show, status: :created, location: @direction }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @direction.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /directions/1
  # PATCH/PUT /directions/1.json
  def update
    # @direction.update(direction_params) 
    # @recipe = Recipe.find(params[:direction][:recipe_id])
    # @directions = @recipe.directions
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
      params.require(:direction).permit(:step_number, :step_entry, :recipe_id)
    end
end
