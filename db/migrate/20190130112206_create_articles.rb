class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
			t.belongs_to :category, :user, index: true
      t.string :title
			t.string :body

      t.timestamps
    end
  end
end
