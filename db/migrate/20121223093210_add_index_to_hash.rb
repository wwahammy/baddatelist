class AddIndexToHash < ActiveRecord::Migration
  def change
	add_index :reports, :hash
  end
end
