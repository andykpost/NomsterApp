class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :captions do |t|
      t.text :caption
      t.integer :user_id
      t.integer :place_id
      t.timestamps
    end

    add_index :captions, [:user_id, :place_id]
    add_index :captions, :place_id
  end
end