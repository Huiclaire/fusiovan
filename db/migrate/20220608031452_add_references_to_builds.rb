class AddReferencesToBuilds < ActiveRecord::Migration[6.1]
  def change
    add_reference :builds, :solar_panel, null: false, foreign_key: true
    add_reference :builds, :battery, null: false, foreign_key: true
    add_reference :builds, :user, null: false, foreign_key: true
  end
end
