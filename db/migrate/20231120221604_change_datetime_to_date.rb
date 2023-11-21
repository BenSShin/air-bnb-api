class ChangeDatetimeToDate < ActiveRecord::Migration[7.0]
  def change
    change_column :reservations, :start_date, :date
    change_column :reservations, :end_date, :date
  end
end
