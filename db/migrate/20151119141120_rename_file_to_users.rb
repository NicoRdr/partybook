class RenameFileToUsers < ActiveRecord::Migration
  def change
    rename_column :soirees, :type, :type_of
  end
end
