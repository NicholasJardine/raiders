class CreateFlags < ActiveRecord::Migration[5.2]
  def change
    create_table :flags do |t|
      t.references :user, foreign_key: true
      t.references :log_date, foreign_key: true

      t.timestamps
    end
  end
end
