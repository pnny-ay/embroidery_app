class UsersEmbroidery < ApplicationRecord
  #中間テーブル用処理
  belongs_to :user
  belongs_to :embroidery
end
