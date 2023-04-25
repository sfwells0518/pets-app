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
      breed: params[:pet][:breed],
      name: params[:pet][:name],
      age: params[:pet][:age],
      color: params[:pet][:color],
      image: params[:pet][:image],
    )
    redirect_to "/pets"
  end

  def edit 
    @pet = Pet.find_by(id: params[:id])
    render :edit 
  end

  def update
    pet = Pet.find_by(id: params[:id])
    pet.breed = params[:pet][:breed]
    pet.name = params[:pet][:name]
    pet.age = params[:pet][:age]
    pet.color = params[:pet][:color]
    pet.image = params[:pet][:image]
    pet.save
    redirect_to "pets/#{pet.id}"
  end

  def destroy
    @pet = Pet.find_by(id: params[:id])
    @pet.destroy 
    redirect_to "/pets", status: :see_other 
  end
end
