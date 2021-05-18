class PagesController < ApplicationController
  def home
    @phone = Phone.new
  end
end
