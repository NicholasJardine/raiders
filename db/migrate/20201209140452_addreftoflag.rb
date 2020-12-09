class Addreftoflag < ActiveRecord::Migration[5.2]
  def change
        add_reference :flags, :covid_form, foreign_key: true

  end
end
