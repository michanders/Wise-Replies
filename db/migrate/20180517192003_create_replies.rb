class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
      t.text :content
      t.belongs_to :user
      t.belongs_to :post

      t.timestamps
    end
  end
end
