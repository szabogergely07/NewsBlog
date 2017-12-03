class RenameImpressionCountToImpressionsCount < ActiveRecord::Migration[5.0]
  def change
  	rename_column :articles, :impression_count, :impressions_count
  end
end
