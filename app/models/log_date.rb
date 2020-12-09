class LogDate < ApplicationRecord
  belongs_to :user
  has_many :flags
end
