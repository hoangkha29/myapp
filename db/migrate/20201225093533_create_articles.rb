class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      # t.text :excerpt
      t.datetime
    end
  end
end
