class RemoveStockFromUsersEmbroideries < ActiveRecord::Migration[6.0]
  def change
    remove_column :users_embroideries, :stock, :boolean
  end
end
