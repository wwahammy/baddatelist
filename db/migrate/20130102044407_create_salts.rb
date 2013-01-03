class CreateSalts < ActiveRecord::Migration
  def change
    create_table :salts do |t|
      t.string :value

      t.timestamps
    end
  end
end
