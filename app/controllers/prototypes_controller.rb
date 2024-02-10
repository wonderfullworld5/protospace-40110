class PrototypesController < ApplicationController
  before_action :set_prototype, only: [:show, :edit, :update, :destroy]
  def new
    @prototype = Prototype.new
  end

  def index
    @prototypes = Prototype.all
  end
  
  def create
    @prototype = Prototype.new(prototype_params)
    @prototype.user = current_user
  
    if @prototype.save
      redirect_to root_path, notice: 'Prototype was successfully created.'
    else
      render :new
    end
  end

  private

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
     
  end

  def set_prototype
    @prototype = Prototype.find(params[:id])
end
end
