class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
			t.belongs_to :article, :comment, :like, index: true
      t.string :name

      t.timestamps
    end
  end
end
