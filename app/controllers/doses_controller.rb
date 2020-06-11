class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @newdose = Dose.new(dose_params)
    @newdose.cocktail_id = @cocktail.id
    @newdose.save
    redirect_to cocktail_path(cocktails_path)
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end

end


  # def index
  #   @cocktails = Cocktail.all
  # end

  # def show
  #   @cocktail = Cocktail.find(params[:id])
  # end

  # def new
  #   @newcocktail = Cocktail.new
  # end

  # def create
  #   @newcocktail = Cocktail.new(cocktail_params)
  #   @newcocktail.save

  #   redirect_to cocktail_path(@newcocktail)
  # end

  # private

  # def cocktail_params
  #   params.require(:cocktail).permit(:name)
  # end
