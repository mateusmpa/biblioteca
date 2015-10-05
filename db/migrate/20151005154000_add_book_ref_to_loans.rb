class AddBookRefToLoans < ActiveRecord::Migration
  def change
    add_reference :loans, :book, index: true, foreign_key: true
  end
end
