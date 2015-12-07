class CreateOrganisateurs < ActiveRecord::Migration
  def change
    create_table :organisateurs do |t|
      t.string :nom
      t.string :prenom
      t.integer :soiree_id

      t.timestamps null: false
    end
  end
end
