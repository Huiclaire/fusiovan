class AddReferencesToBookmarks < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookmarks, :build, null: false, foreign_key: true
    add_reference :bookmarks, :user, null: false, foreign_key: true
  end
end
