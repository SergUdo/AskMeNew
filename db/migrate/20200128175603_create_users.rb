class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username

      t.timestamps
    end

    t.timestamps null: false
    add_index :users, :email, unique: true
  end
end