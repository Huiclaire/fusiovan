class CreateAppliances < ActiveRecord::Migration[6.1]
  def change
    create_table :appliances do |t|
      t.string :kind
      t.string :make
      t.string :model
      t.float :voltage
      t.float :amps
      t.float :price
      t.string :product_url

      t.timestamps
    end
  end
end
