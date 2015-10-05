class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
    	t.string :name
    	t.string :title
    	t.string :domain
    	t.string :url
    	t.string :email

      t.timestamps null: false
    end
  end
end
