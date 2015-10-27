class Author < ActiveRecord::Base
     belongs_to :book

  def self.search(search)
     where("name LIKE ?", "%#{search.to_s.downcase}%")
  end
end
