class AddGenderToRaydb < ActiveRecord::Migration
  def change
    add_column :raydbs, :gender, :string
  end
end
