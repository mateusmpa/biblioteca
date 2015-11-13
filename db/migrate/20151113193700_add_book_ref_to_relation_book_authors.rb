class AddBookRefToRelationBookAuthors < ActiveRecord::Migration
  def change
    add_reference :relation_book_authors, :book, index: true, foreign_key: true
  end
end
