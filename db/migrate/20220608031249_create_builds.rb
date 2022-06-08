class CreateBuilds < ActiveRecord::Migration[6.1]
  def change
    create_table :builds do |t|
      t.string :name
      t.float :total_price

      t.timestamps
    end
  end
end
