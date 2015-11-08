class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string  :title
      t.string  :name
      t.string  :url
      t.references  :story
      t.references  :user

      t.timestamps null: false
    end
  end
end
