class AddAuthorRefToRelationBookAuthors < ActiveRecord::Migration
  def change
    add_reference :relation_book_authors, :author, index: true, foreign_key: true
  end
end
