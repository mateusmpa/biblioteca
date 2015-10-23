class Book < ActiveRecord::Base

  def self.search(search)
     where("title LIKE ?", "%#{search.to_s.downcase}%")
  end

end
