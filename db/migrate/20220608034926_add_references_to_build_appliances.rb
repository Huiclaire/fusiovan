class AddReferencesToBuildAppliances < ActiveRecord::Migration[6.1]
  def change
    add_reference :build_appliances, :build, null: false, foreign_key: true
    add_reference :build_appliances, :appliance, null: false, foreign_key: true
  end
end
