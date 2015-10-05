class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.date :release
      t.string :language
      t.string :publishing_house


      t.timestamps null: false
    end
  end
end
