class CreateBuildAppliances < ActiveRecord::Migration[6.1]
  def change
    create_table :build_appliances do |t|
      t.float :use_hours
      t.float :amp_hours

      t.timestamps
    end
  end
end
