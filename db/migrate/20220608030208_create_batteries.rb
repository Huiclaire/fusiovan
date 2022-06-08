class CreateBatteries < ActiveRecord::Migration[6.1]
  def change
    create_table :batteries do |t|
      t.string :kind
      t.string :make
      t.string :model
      t.float :voltage
      t.float :amp_hours
      t.float :price
      t.string :product_url

      t.timestamps
    end
  end
end
