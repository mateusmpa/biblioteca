class AddBookRefToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :book, index: true, foreign_key: true
  end
end
