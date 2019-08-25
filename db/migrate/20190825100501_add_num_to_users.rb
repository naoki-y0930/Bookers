class AddNumToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :num, :integer
  end
end
