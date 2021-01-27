class CreateBloggenres < ActiveRecord::Migration[6.1]
  def change
    create_table :bloggenres do |t|
      t.text :name
      t.text :memo

      t.timestamps
    end
  end
end
