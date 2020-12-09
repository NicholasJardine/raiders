class Flag < ApplicationRecord
  belongs_to :user
  belongs_to :log_date
  belongs_to :covid_form
end
