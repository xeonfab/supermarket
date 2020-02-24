class SuperheroesController < ApplicationController

  def index
    @superheroes = Superhero.all
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.new(superhero_params)
    if @superhero.save
      redirect_to superheroes_path(@superhero)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @superhero.update(superhero_params)
    redirect_to superheroes_path(@superhero)
  end

  def destroy
    @superhero = Superhero.find(params[:id])
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :description, :age, :superpower, :strength, :speed, :price, :location)
  end

end
