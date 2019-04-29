class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :message
      t.string :rating
      t.integer :user_id
      t.integer :place_id
      t.timestamps
    end

    add_index :comments, [:user_id, :place_id]
    add_index :comments, :place_id
  end
end

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :place

  RATINGS = {
    'one star': '1_star',
    'two stars': '2_stars',
    'three stars': '3_stars',
    'four stars': '4_stars',
    'five stars': '5_stars'
  }

  def humanized_rating
    RATINGS.invert[self.rating]
  end


end