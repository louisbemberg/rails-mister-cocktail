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

    if @newcocktail.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
