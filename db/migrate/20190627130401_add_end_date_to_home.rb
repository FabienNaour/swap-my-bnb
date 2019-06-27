class AddEndDateToHome < ActiveRecord::Migration[5.2]
  def change
    change_column :homes, :end_date, :date
  end
end
