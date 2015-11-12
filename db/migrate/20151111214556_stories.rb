class Stories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.text   :content
      t.references :user
      t.references  :cat

      t.timestamps null: false
    end
  end
end
