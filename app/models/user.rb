class User < ApplicationRecord
  validates :name, presence: true
  validates :identity, presence: true
  validates :identity, uniqueness: true

  has_many :covid_forms
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :authentication_keys => [:identity]

 protected

 def email_required?
  false
 end


def email_changed?
false
end

end
