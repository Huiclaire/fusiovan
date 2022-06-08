class CreateSolarPanels < ActiveRecord::Migration[6.1]
  def change
    create_table :solar_panels do |t|
      t.string :kind
      t.string :make
      t.string :model
      t.float :voltage
      t.float :watts
      t.float :price
      t.string :product_url

      t.timestamps
    end
  end
end
