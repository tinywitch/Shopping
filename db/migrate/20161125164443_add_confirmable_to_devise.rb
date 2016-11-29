class AddConfirmableToDevise < ActiveRecord::Migration[5.0]
  # when migrate
  def up
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :date_time
    add_column :users, :confirmation_sent_at, :date_time

    add_index :users, :confirmation_token, unique: true
  end
  # when rollback
  def down
    remove_column :users, :confirmation_token, :confirmed_at, :confirmation_sent_at
  end

end
