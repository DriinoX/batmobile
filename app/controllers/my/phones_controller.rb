class My::PhonesController < ApplicationController
  def index
    @phones = current_user.phones
  end
end
