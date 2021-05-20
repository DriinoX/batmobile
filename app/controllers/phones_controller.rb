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

    # collecting phones to provide Previous & Next

    # links, logic is in place to work in situations

    # where phones have the same last and/or

    # first names; login is unique

    @all_phones_array = Phone.all

    @curr_phones_index = @all_phones_array.index(@phone)
    # this defines our starting point
    # from which to base the Previous and Next links

    @previous_phone = @all_phones_array[@curr_phones_index - 1]

    @next_phone = @all_phones_array[@curr_phones_index + 1]

    @first_phones_id = @all_phones_array.first

    @last_phones_id = @all_phones_array.last
  end
end
