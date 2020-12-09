class CreateLogDates < ActiveRecord::Migration[5.2]
  def change
    create_table :log_dates do |t|

      t.timestamps
    end
  end
end
