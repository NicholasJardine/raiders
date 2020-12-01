class Addtemptoform < ActiveRecord::Migration[5.2]
  def change
                add_column :covid_forms, :temp, :float

  end
end
