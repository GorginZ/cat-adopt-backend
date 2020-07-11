class CatsController < ApplicationController
  before_action :set_cat, only: [:show, :update, :destroy]

  def index 
   @cats = Cat.all.order(id: "desc")
    render json: @cats
  end 

  def show 
    render json: @cat
  end 

  def create 
    Cat.create(cat_params)
    render json: "cat profile created", status: 200 
  end 

  def update 
    @cat.update(cat_params)
    render json: "cat profile updated", status: 200
  end 

  def destroy
    @cat.destroy
    render json: "cat profile deleted", status: 200
  end 

  private 

  def cat_params 
    params.require(:cat).permit(:name, :bio, :age, :sex, :state, :suburb)
  end 

  def set_cat 
    @cat = cat.find(params[:id])
  end 
end