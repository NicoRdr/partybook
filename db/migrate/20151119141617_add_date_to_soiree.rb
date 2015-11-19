class AddDateToSoiree < ActiveRecord::Migration
  def change
    add_column :soirees, :date, :date
  end
end
