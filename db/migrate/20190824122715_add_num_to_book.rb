class AddNumToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :num, :integer
  end
end
