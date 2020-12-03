class Adddatetocovidforms < ActiveRecord::Migration[5.2]
  def change
                    add_column :covid_forms, :date, :date

  end
end
