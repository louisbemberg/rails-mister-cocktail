class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @newdose = Dose.new(dose_params)
    @newdose.cocktail_id = @cocktail.id
    if @newdose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
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
