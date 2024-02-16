class PrototypesController < ApplicationController
  before_action :set_prototype, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def new
    @prototype = Prototype.new
  end

  def show
    @prototype = Prototype.find(params[:id])
    @comments = @prototype.comments
  end

  def edit
    @prototype = Prototype.find(params[:id])
    redirect_to root_path unless @prototype.user == current_user
  end

  def update
    if @prototype.update(prototype_params)
      redirect_to @prototype
    else
      render :edit
    end
  end

  def index
    @prototypes = Prototype.all
  end
  
  def create
    @prototype = Prototype.new(prototype_params)
    @prototype.user = current_user
  
    if @prototype.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @prototype.destroy
    redirect_to root_path
  end

  private

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
    

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end
end

