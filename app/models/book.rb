class Book < ActiveRecord::Base

  has_many :authors
  validates :author, presence: true
  validates :title, presence: true,
             length: { :maximum => 140, :message => "O título deve ter no máximo 140 caracteres."}

  def self.search(search)
     where("title LIKE ?", "%#{search.to_s.downcase}%")
  end

end
