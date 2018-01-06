class CreateFloorcompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :floorcompanies do |t|
      t.references :company, foreign_key: true
      t.references :floor, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.int :employees_on_site
      t.int :daily_rate
      t.int :sq_ft_used
      t.int :desks_used

      t.timestamps
    end
  end
end
