class UserEmbroidery < ApplicationRecord
  belongs_to :user
  belongs_to :embroidery
end
