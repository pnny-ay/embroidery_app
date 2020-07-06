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

    if @search_params.empty?
      @search_params[:color_num] = cookies['save_search_params_color_num'] if cookies['save_search_params_color_num'].present?
      @search_params[:cls] = cookies['save_search_params_cls'] if cookies['save_search_params_cls'].present?
      @search_params[:tone] = cookies['save_search_params_tone'] if cookies['save_search_params_tone'].present?
      @res = Embroidery.search(@search_params).page(params[:page]) #検索結果
      @res_num = Embroidery.search(@search_params).count
    else
    @res = Embroidery.search(@search_params).page(params[:page]) #検索結果
    @res_num = Embroidery.search(@search_params).count
        cookies['save_search_params_color_num'] = emb_search_params[:color_num]
        cookies['save_search_params_cls'] = emb_search_params[:cls]
        cookies['save_search_params_tone'] = emb_search_params[:tone]
    end
      render :yarn
  end


  def about
  end

  def list
    @list_buy = current_user.embroideries.page(params[:page])
    @list_buy_num = current_user.embroideries.count
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
