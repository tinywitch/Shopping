class AddTotalToCart < ActiveRecord::Migration[5.0]
  def change
    add_column :carts, :total, :integer
  end
end
