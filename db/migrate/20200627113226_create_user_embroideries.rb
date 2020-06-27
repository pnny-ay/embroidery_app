class CreateUserEmbroideries < ActiveRecord::Migration[6.0]
  def change
    create_table :user_embroideries do |t|
      t.references :user, null: false, foreign_key: true
      t.references :embroidery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
