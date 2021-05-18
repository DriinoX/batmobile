class CreatePhones < ActiveRecord::Migration[6.0]
  def change
    create_table :phones do |t|
      t.string :state, null: false
      t.references :user, foreign_key: true, null: false
      t.date :start_dispo, null: false
      t.date :end_dispo, null: false
      t.string :brand, null: false
      t.string :model, null: false
      t.text :description, null: false
      t.timestamps
    end
  end
end
