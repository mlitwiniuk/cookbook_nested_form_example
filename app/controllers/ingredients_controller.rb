class IngredientsController < ApplicationController
  def create
    @recipe = Recipe.new
    @ingredient = @recipe.ingredients.build
    @ingredient.id = Time.current.to_i
    @ingredient.fallback_id = @ingredient.id

    respond_to do |format|
      format.turbo_stream
    end
  end

  def destroy
    @ingredient = Ingredient.find_or_initialize_by id: params[:id]
    @ingredient.fallback_id = params[:idx]

    respond_to do |format|
      format.turbo_stream
    end
  end
end
