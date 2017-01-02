class AddSampletextToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :sampletext, :string, :limit => 500
  end
end
