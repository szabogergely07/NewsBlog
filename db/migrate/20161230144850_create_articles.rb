class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.string :category
      t.timestamp :date

      t.timestamps
    end
  end
end
