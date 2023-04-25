class PetsController < ApplicationController
  def index
    @pets = Pet.all
    render :index 
  end

  def show
    @pet = Pet.find_by(id: params[:id])
    render :show 
  end 

  def new
    @pet = Pet.new
    render :new 
  end

  def create
    @pet = Pet.create(
      age: params[:pet][:age],
      breed: params[:pet][:breed],
      color: params[:pet][:color],
      image: params[:pet][:image],
    )
    redirect_to "/pets"
  end

  def destroy
    @pet = Pet.find_by(id: params[:id])
    @pet.destroy 
    redirect_to "/pets", status: :see_other 
  end
end
