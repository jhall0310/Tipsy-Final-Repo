class AddPostRefUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :post, index: true, foreign_key: true
  end
end
