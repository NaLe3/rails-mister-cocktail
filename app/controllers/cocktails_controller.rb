class CocktailsController < ApplicationController

  def index
    @cocktails= Cocktail.all

  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end

  private

  def cocktail_params
    return params.require(:cocktail).permit(:name)
  end

end

Cocktail.new()


class Person
  def initialize(attributes = {})
    @name = attributes[:name]
    @age = attributes[:age]
  end
end

Person.new({name: 'test', age: 35})
