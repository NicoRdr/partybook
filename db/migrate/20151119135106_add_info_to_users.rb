class AddInfoToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :name
    add_column :users, :nom, :string
    add_column :users, :prenom, :string
    add_column :users, :soiree_id, :integer
  end
end
