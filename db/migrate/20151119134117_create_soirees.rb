class CreateSoirees < ActiveRecord::Migration
  def change
    create_table :soirees do |t|
      t.string :nom
      t.text :description
      t.integer :place
      t.integer :prix
      t.string :lieux
      t.string :type
      t.integer :user_id
      t.integer :organisateur_id

      t.timestamps null: false
    end
  end
end
