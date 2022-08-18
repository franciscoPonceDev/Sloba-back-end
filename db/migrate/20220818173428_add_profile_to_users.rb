class AddProfileToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string, default: "Anônimo", null: false
    add_column :users, :wallet, :integer, default: 0, null: false
    add_column :users, :fidelity, :integer, default: 0, null: false
    add_column :users, :name, :string
    add_column :users, :birthday, :datetime
    add_column :users, :role, :integer, default: 0, null: false
  end
end
