class Adddatetoflag < ActiveRecord::Migration[5.2]
  def change
                        add_column :flags, :date, :date

  end
end
