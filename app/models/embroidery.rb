class Embroidery < ApplicationRecord
  enum cls: {赤: 1, オレンジ: 2, 黄色: 3, 緑: 4, 青: 5, 紫: 6, 茶色: 7, 白: 8, 黒: 9}
  enum tone: {ペール: 1, ライト: 2, ブライト: 3, ソフト: 4, グレイッシュ: 5, ダル: 6, ストロング: 7, ビビッド: 8, ディープ: 9, ダーク: 10}

  has_many :users_embroideries
  has_many :users, through: :users_embroideries

  scope :search, -> (search_params) do
    return if search_params.blank?

    color_num_is(search_params[:color_num])
    .class_is(search_params[:cls])
    .tone_is(search_params[:tone])
  end

  scope :color_num_is, -> (color_num){ where('color_num LIKE ?', "%#{color_num}%") if color_num.present? }
  scope :class_is, -> (cls){ where(cls: cls) if cls.present?}
  scope :tone_is, -> (tone){ where(tone: tone) if tone.present?}
end
