class PrototypesController < ApplicationController
  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.new(prototype_params)
  end

  private

  def prototype_params
    params.require(:prototype).permit(:name, :catch_copy, :concept, :image)
  end
end