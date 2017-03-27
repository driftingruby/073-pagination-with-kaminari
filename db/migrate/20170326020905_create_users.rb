class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :city
      t.string :state

      t.timestamps
    end
    add_index :users, :first_name
    add_index :users, :last_name
  end
end
