class Adddetailstoflag < ActiveRecord::Migration[5.2]
  def change
                add_column :flags, :status, :string, default: "Pending"

  end
end
