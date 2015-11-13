class Author < ActiveRecord::Base
  has_many :relation_book_authors
  has_many :book, through: :relation_book_authors

  def self.search(search)
     where("name LIKE ?", "%#{search.to_s.downcase}%")
  end
end
