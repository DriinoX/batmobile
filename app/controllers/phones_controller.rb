class PhonesController < ApplicationController
  def index
    if params[:brand] != ""
      @phones = Phone.where(brand: params[:brand].downcase.capitalize)
    elsif params[:model] != "Modèle"
      @phones = Phone.where(model: params[:model])
    else
      @phones = Phone.all
    end
  end

  def show

  end
end
