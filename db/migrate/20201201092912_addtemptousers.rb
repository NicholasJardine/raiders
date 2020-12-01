class Addtemptousers < ActiveRecord::Migration[5.2]
  def change
                add_column :users, :temp, :float

  end
end
