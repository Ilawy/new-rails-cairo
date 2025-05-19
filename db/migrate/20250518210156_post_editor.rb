class PostEditor < ActiveRecord::Migration[8.0]
  def change
    t.references :user, null: false, foreign_key: true
    t.references :post, null: false, foreign_key: true
  end
end
