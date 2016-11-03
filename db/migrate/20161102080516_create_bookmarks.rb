class CreateBookmarks < ActiveRecord::Migration[5.0]
  def change
    create_table :bookmarks do |t|
      t.string :title
      t.string :link
      t.text :note

      t.timestamps
    end
  end
end
