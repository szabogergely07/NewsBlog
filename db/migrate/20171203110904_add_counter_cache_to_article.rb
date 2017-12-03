class AddCounterCacheToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :impression_count, :integer, default: 0
  end
end
