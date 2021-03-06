class IngredientsController < ApplicationController
  before_action :all_ingredients, only: [:create, :index, :update]
  before_action :set_ingredient, only: [:edit, :update, :destroy] 

  def show    
  end

  # GET /ingredients/new
  def new
    @ingredient = Ingredient.new  
    # @ingredient.recipe_id = @recipe.id 
  end 

  # GET /ingredients/1/edit
  def edit
  end

  # POST /ingredients
  # POST /ingredients.json
  def create
    @ingredient = Ingredient.create(ingredient_params)
    @recipe = Recipe.find(params[:ingredient][:recipe_id])
    @ingredient.recipe_id = @recipe.id
    @ingredients = @recipe.ingredients
    # respond_to do |format|
    #   if @ingredient.save
    #     format.js
    #     format.html { redirect_to recipe_path(id: @ingredient.recipe_id), 
    #     notice: 'Ingredient was successfully created.' }
    #     format.json { render :show, status: :created, location: @ingredient }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @ingredient.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /ingredients/1
  # PATCH/PUT /ingredients/1.json
  def update
    @ingredient.update(ingredient_params)
  end

  # DELETE /ingredients/1
  # DELETE /ingredients/1.json
  def destroy
    @ingredient.destroy
  end

  private

    def all_ingredients
      @ingredients = Ingredient.all
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient
      @ingredient = Ingredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingredient_params
      params.require(:ingredient).permit(:name, :amount, :measurement, :recipe_id)
    end
end
