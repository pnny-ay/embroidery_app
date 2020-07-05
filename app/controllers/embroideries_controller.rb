class EmbroideriesController < ApplicationController
  def home
  end

  def create
    @create_params = users_embroideries_params
    @buy = UsersEmbroidery.create(@create_params)
    redirect_to :yarn, notice: "買う糸リストに追加しました。"
  end

  def yarn
    @search_params = emb_search_params
    @res = Embroidery.search(@search_params) #検索結果
  end


  def about
  end

  def list
    @list_buy = current_user.embroideries
  end

  def destroy
    @destroy_params = users_embroideries_params
    @emb = UsersEmbroidery.find_by(@destroy_params).destroy
    redirect_to :list, notice: "リストから削除しました。"
  end

  private
  def emb_search_params
    params.fetch(:search, {}).permit(:id, :color_num, :cls, :tone)
  end

  def users_embroideries_params
    params.permit(:user_id, :embroidery_id)
  end

end
