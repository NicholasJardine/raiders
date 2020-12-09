class AddUserToLogDates < ActiveRecord::Migration[5.2]
  def change
    add_reference :log_dates, :user, foreign_key: true
  end
end
