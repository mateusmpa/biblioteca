class CreateRelationBookAuthors < ActiveRecord::Migration
  def change
    create_table :relation_book_authors do |t|

      t.timestamps null: false
    end
  end
end
