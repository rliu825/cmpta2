class AddAgeToRaydb < ActiveRecord::Migration
  def change
    add_column :raydbs, :age, :integer
  end
end
