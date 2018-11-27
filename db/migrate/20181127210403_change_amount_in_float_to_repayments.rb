class ChangeAmountInFloatToRepayments < ActiveRecord::Migration[5.2]
  def change
    change_column :repayments, :amount, :float
  end
end
