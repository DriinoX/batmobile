class AddPriceToPhones < ActiveRecord::Migration[6.0]
  def change
    add_column :phones, :price, :float
  end
end
