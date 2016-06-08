class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :title, null:false
      t.string :artist, null:false
      t.integer :user_id
      t.attachment :song

      t.timestamps null: false
    end
    add_index("musics", "user_id")
  end
end
