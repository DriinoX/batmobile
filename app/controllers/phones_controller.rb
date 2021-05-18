class PhonesController < ApplicationController
  def index

  end

  def show
    @phone = Phone.find(params[:id])
  end
end
