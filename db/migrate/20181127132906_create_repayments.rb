class CreateRepayments < ActiveRecord::Migration[5.2]
  def change
    create_table :repayments do |t|
      t.references :subsidy, foreign_key: true
      t.string :mail
      t.string :photo
      t.integer :amount

      t.timestamps
    end
  end
end
