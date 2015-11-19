class AddOrganisateurToUsers < ActiveRecord::Migration
  def change
    add_column :users, :organisateur, :boolean, default: false
  end
end
