class ChangeColumnToFavorite < ActiveRecord::Migration[5.2]

    def up
      change_column :favorites, :user_id, :integer, foreign_key: true, null: false
      change_column :favorites, :book_id, :integer, foreign_key: true, null: false
    end

    def down
      change_column :favorties, :user_id, :integer
      change_column :favorties, :book_id, :integer
    end
  end
