class CreateEmbroideries < ActiveRecord::Migration[6.0]
  def change
    create_table :embroideries do |t|
      t.string :color_num
      t.string :color
      t.integer :cls
      t.integer :tone

      t.timestamps
    end
  end
end
