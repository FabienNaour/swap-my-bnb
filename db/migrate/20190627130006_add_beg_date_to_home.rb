class AddBegDateToHome < ActiveRecord::Migration[5.2]
  def change
    change_column :homes, :beg_date, :date
  end
end
