class DosesController < ApplicationController

  def new
    @doses = Dose.new
  end

  #def create
    #@doses = Dose.new(ingredient_params)
    #@doses.save
  #end

  #def ingredient_params
    #return ingredient.require(:ingredient).permit(:name, :description)
  #end
end
