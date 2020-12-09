class Adddetailstologdates < ActiveRecord::Migration[5.2]
  def change
                        add_column :log_dates, :date, :date

  end
end
