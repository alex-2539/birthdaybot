class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :message
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end
