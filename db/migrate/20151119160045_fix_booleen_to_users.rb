class FixBooleenToUsers < ActiveRecord::Migration
  def change
    change_column :users, :organisateur, :boolean, :default => nil
  end
end
