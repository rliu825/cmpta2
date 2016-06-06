class CreateRaydbs < ActiveRecord::Migration
  def change
    create_table :raydbs do |t|
      t.string :name
      t.integer :weight
      t.integer :height
      t.string :color
      t.float :gpa
      t.age :integer
      t.gender :string
      t.timestamps null: false
    end
  end
end
