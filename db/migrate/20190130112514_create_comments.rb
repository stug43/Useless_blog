class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
			t.belongs_to :article, :user, index: true
      t.string :comment

      t.timestamps
    end
  end
end
