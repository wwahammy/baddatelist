class ChangeFieldsToInt < ActiveRecord::Migration
  def up
  
	
	
	  change_column :reports, :violent, :integer
      change_column :reports, :no_payment, :integer
      change_column :reports, :persistent_haggler, :integer
      change_column :reports, :no_show, :integer
      change_column :reports, :refuses_condom, :integer
      change_column :reports, :disrespectful, :integer
      change_column :reports, :police, :integer
      change_column :reports, :stalker, :integer
      change_column :reports, :keepscalling_wontpay, :integer
		
	
  end

  def down
  end
end
