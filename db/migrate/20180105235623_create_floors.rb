class CreateFloors < ActiveRecord::Migration[5.1]
  def change
    create_table :floors do |t|
      t.references :property, foreign_key: true
      t.int :floor_number
      t.int :total_sq_feet
      t.int :total_desks

      t.timestamps
    end
  end
end
