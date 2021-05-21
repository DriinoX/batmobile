class AddAddressToPhones < ActiveRecord::Migration[6.0]
  def change
     add_column :phones, :address, :string
  end
end
