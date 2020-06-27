class Embroidery < ApplicationRecord
  enum cls: {red: 1, orange: 2, yellow: 3, green: 4, blue: 5, purple: 6, brown: 7, white: 8, black: 9}
  enum tone: {pale: 1, light: 2, bright: 3, soft: 4, grayish: 5, dull: 6, strong: 7, vivid: 8, deep: 9, dark: 10}

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
