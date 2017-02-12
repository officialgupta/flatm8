class AddFlatToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :flat, :integer
  end
end
