class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, authentication_keys: [:name]


validates :name,
uniqueness: { case_sensitive: :false },
length: { minimum: 2, maximum: 20 }

has_many :users_embroideries
has_many :embroideries, through: :users_embroideries

#登録時にメールアドレスを不要とする
def email_required?
  false
end

def email_changed?
  false
end
end
