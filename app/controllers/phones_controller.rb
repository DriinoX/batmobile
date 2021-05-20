class PhonesController < ApplicationController
  def index
    if params[:query].present?
      sql_query = " \
        brand @@ :query \
        OR model @@ :query \
      "
      @phones = Phone.where(sql_query, query: "%#{params[:query]}%")
    else
      @phones = Phone.all
    end
  end

  def show
    @phone = Phone.find(params[:id])
  end
end
