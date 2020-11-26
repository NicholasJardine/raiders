class Addtousers < ActiveRecord::Migration[5.2]
  def change
            add_column :users, :identity, :string

  end
end
