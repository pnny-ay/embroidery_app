class EmbroideriesController < ApplicationController
  def home
    @search_params = emb_search_params
    @res = Embroidery.search(@search_params) #検索結果
  end

  def about
  end

  private
  def emb_search_params
    params.fetch(:search, {}).permit(:color_num, :cls, :tone)
  end
end
