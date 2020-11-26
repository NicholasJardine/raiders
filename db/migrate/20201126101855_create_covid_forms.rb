class CreateCovidForms < ActiveRecord::Migration[5.2]
  def change
    create_table :covid_forms do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
