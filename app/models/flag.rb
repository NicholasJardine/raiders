class Flag < ApplicationRecord
  belongs_to :user
  belongs_to :log_date
end
