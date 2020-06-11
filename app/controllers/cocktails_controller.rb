class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @newcocktail = Cocktail.new
  end

  def create
    @newcocktail = Cocktail.new(cocktail_params)
    @newcocktail.save

    redirect_to cocktail_path(@newcocktail)
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
