class AdddetailstocovidForm < ActiveRecord::Migration[5.2]
  def change
     add_column :covid_forms, :past_two_weeks, :boolean, default: false
            add_column :covid_forms, :fever, :boolean, default: false
            add_column :covid_forms, :cough, :boolean, default: false
            add_column :covid_forms, :shortness_of_breath, :boolean, default: false
            add_column :covid_forms, :sense_of_smell, :boolean, default: false
            add_column :covid_forms, :sense_of_taste, :boolean, default: false
            add_column :covid_forms, :sore_throat, :boolean, default: false

            add_column :covid_forms, :awaiting_results, :boolean, default: false




  end
end
