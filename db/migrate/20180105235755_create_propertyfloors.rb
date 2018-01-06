class CreatePropertyfloors < ActiveRecord::Migration[5.1]
  def change
    create_table :propertyfloors do |t|
      t.references :property, foreign_key: true
      t.references :floor, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.int :total_sq_feet
      t.int :total_desks

      t.timestamps
    end
  end
end
