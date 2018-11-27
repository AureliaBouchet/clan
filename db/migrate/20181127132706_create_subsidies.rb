class CreateSubsidies < ActiveRecord::Migration[5.2]
  def change
    create_table :subsidies do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :amount

      t.timestamps
    end
  end
end
