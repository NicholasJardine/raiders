class Addstatustocovidforms < ActiveRecord::Migration[5.2]
  def change
            add_column :covid_forms, :status, :string, default: "Pending"

  end
end
