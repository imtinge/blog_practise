class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.text :content_html
      t.string :friendly_id

      t.timestamps
    end
    add_index :posts, :friendly_id, unique: true
  end
end
