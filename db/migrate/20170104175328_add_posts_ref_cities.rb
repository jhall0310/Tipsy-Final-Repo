class AddPostsRefCities < ActiveRecord::Migration[5.0]
  def change
    add_reference :cities, :post, index: true, foreign_key: true
  end
end
