class PhonesController < ApplicationController
  def index
   @phones = Phone.all
  end

  def show

  end
end
