class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :subject
      t.string :content
      t.string :published_at
      t.string :date

      t.timestamps null: false
    end
  end
end
